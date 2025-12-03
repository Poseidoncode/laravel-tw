import fs from "fs";
import path from "path";
const docsDir = path.resolve(process.cwd(), "content/docs");
const files = fs.readdirSync(docsDir).filter((f) => f.endsWith(".mdx"));
const bad = [];
for (const file of files) {
  const fp = path.join(docsDir, file);
  const content = fs.readFileSync(fp, "utf8");
  const lines = content.split("\n");
  for (let i = 0; i < 3; i++) {
    if (!lines[i]) continue;
    const m = lines[i].match(/^title:\s*(.+)$/);
    if (m) {
      const title = m[1].trim();
      const par = title.match(/(.+)\((.+)\)/);
      if (par) {
        const left = par[1].trim();
        const inside = par[2].trim();
        const insideHasChinese = /[\p{Script=Han}]/u.test(inside);
        const leftHasChinese = /[\p{Script=Han}]/u.test(left);
        const insideEqualsLeft = inside === left;
        if (insideHasChinese || insideEqualsLeft) {
          const basename = path.basename(file, ".mdx");
          const engGuess = basename
            .split("-")
            .map((s) => s.charAt(0).toUpperCase() + s.slice(1))
            .join(" ");
          bad.push({ file, title, left, inside, engGuess });
        }
      }
    }
  }
}
console.log(JSON.stringify(bad, null, 2));
