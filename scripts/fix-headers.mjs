import fs from "fs";
import path from "path";

const docsDir = path.resolve(process.cwd(), "content/docs");

function hasChinese(str) {
  return /[\p{Script=Han}]/u.test(str);
}

function readFrontmatter(content) {
  if (!content.startsWith("---")) return null;
  const end = content.indexOf("\n---", 3);
  if (end === -1) return null;
  const fm = content.slice(3, end + 1);
  const rest = content.slice(end + 4);
  const lines = fm.split("\n").map((l) => l.trim());
  const data = {};
  for (let line of lines) {
    if (!line) continue;
    const idx = line.indexOf(":");
    if (idx === -1) continue;
    const key = line.slice(0, idx).trim();
    let val = line.slice(idx + 1).trim();
    if (val.startsWith('"') && val.endsWith('"')) val = val.slice(1, -1);
    if (val.startsWith("'") && val.endsWith("'")) val = val.slice(1, -1);
    data[key] = val;
  }
  return { data, rest };
}

const files = fs.readdirSync(docsDir).filter((f) => f.endsWith(".mdx"));

const proposals = [];

for (const file of files) {
  const fp = path.join(docsDir, file);
  const content = fs.readFileSync(fp, "utf8");
  const fm = readFrontmatter(content);
  if (!fm) continue;
  const title = fm.data.title || "";
  const desc = fm.data.description || "";
  const rest = fm.rest;
  const alreadyMatch = /.*\p{Script=Han}.*\(.*\)/u.test(title);
  // if already contains Chinese + (English) skip
  if (alreadyMatch) continue;
  // find first H1 in rest
  const lines = rest.split("\n");
  let h1 = lines.find((l) => l.trim().startsWith("# "));
  if (h1) h1 = h1.replace(/^#+\s*/, "").trim();
  // (we only use a Chinese H1 as the title candidate; don't attempt other heuristics)

  let chineseCandidate = null;
  if (h1 && /[\p{Script=Han}]/u.test(h1)) {
    // prefer h1 if it's Chinese or contains both
    // if h1 already contains parentheses (English part), use it directly
    if (/\(.*\)/.test(h1)) {
      chineseCandidate = h1;
    } else {
      chineseCandidate = h1;
    }
  } else {
    // if there isn't a Chinese H1, skip — we can't reliably create a Chinese title
    continue;
  }

  const englishOriginal = title;
  const newTitle = /\(.*\)/.test(chineseCandidate)
    ? chineseCandidate
    : `${chineseCandidate} (${englishOriginal})`;

  let newDesc = desc;
  if (!/[\p{Script=Han}]/u.test(newDesc)) {
    // attempt to find first Chinese paragraph in content
    const para = lines.find((l) => l.trim().match(/[\p{Script=Han}]/u));
    if (para) newDesc = para.trim();
  }

  proposals.push({ file, oldTitle: title, oldDesc: desc, newTitle, newDesc });
}

console.log(JSON.stringify({ count: proposals.length, proposals }, null, 2));
