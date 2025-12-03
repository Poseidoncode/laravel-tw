import fs from "fs";
import path from "path";
import { compileMDX } from "next-mdx-remote/rsc";

const filePath = path.join(process.cwd(), "content/docs/migrations.mdx");
const source = fs.readFileSync(filePath, "utf8");

async function run() {
  try {
    const { content, frontmatter } = await compileMDX({
      source,
      options: { parseFrontmatter: true },
    });

    console.log("Frontmatter parsed successfully:");
    console.log(frontmatter);
  } catch (err) {
    console.error("Error while compiling MDX:");
    console.error(err);
    process.exitCode = 1;
  }
}

run();
