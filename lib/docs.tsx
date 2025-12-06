import fs from 'fs'
import path from 'path'
import { compileMDX } from 'next-mdx-remote/rsc'
import rehypeSlug from 'rehype-slug'
import rehypeAutolinkHeadings from 'rehype-autolink-headings'
import rehypeShiki from '@shikijs/rehype'
import type { TocItem } from '@/components/docs/toc'

const contentDir = path.join(process.cwd(), 'content/docs')

export type Doc = {
  slug: string
  content: React.ReactNode
  frontmatter: {
    title: string
    description?: string
  }
  toc: TocItem[]
}

export async function getDocBySlug(slug: string): Promise<Doc | null> {
  const fileName = slug + '.mdx'
  const filePath = path.join(contentDir, fileName)

  if (!fs.existsSync(filePath)) {
    return null
  }

  const source = fs.readFileSync(filePath, 'utf8')

  // Remove manual top-of-page TOC lists placed directly after frontmatter.
  // Many MDX files include a hand-authored list-of-links at the top of the file.
  // The site already renders a right-hand page TOC, so strip these blocks here
  // so we don't need to modify dozens of content files.
  let lines = source.split('\n')
  const fmIndexes: number[] = []
  for (let i = 0; i < Math.min(lines.length, 40); i++) {
    if (lines[i].trim() === '---') fmIndexes.push(i)
    if (fmIndexes.length === 2) break
  }

  if (fmIndexes.length === 2) {
    // index after the closing frontmatter delimiter
    let i = fmIndexes[1] + 1
    // skip initial blank lines
    while (i < lines.length && lines[i].trim() === '') i++

    // If the first non-blank block is a bullet/numbered list containing
    // link entries (e.g. "- [Section](#id)"), strip the entire contiguous
    // list (including nested indented items).
    const listStart = i
    const listLineRE = /^\s*([-*]|\d+\.)\s+/
    let foundList = false
    let j = i
    while (j < lines.length && (lines[j].trim() === '' || listLineRE.test(lines[j]))) {
      if (listLineRE.test(lines[j])) foundList = true
      j++
    }

    if (foundList) {
      // Remove the lines from listStart..j-1
      lines = [...lines.slice(0, listStart), ...lines.slice(j)]
    }
  }

  // Extract TOC from source
  const toc: TocItem[] = []
  let inFrontmatter = false
  let frontmatterCount = 0

  for (const line of lines) {
    // Skip frontmatter
    if (line.trim() === '---') {
      frontmatterCount++
      inFrontmatter = frontmatterCount === 1
      continue
    }
    if (inFrontmatter || frontmatterCount < 2) continue

    // Match markdown headings (## or ### or ####)
    const headingMatch = line.match(/^(#{2,4})\s+(.+)/)
    if (headingMatch) {
      const level = headingMatch[1].length
      const text = headingMatch[2].trim()

      // Generate ID from text (similar to rehype-slug)
      const id = text
        .toLowerCase()
        .replace(/[^a-z0-9\u4e00-\u9fa5]+/g, '-')
        .replace(/^-|-$/g, '')

      toc.push({ id, text, level })
    }
  }

  const cleanedSource = lines.join('\n')

  const { content, frontmatter } = await compileMDX<{ title: string; description?: string }>({
    source: cleanedSource,
    components: {},
    options: {
      parseFrontmatter: true,
      mdxOptions: {
        rehypePlugins: [
          rehypeSlug,
          [rehypeAutolinkHeadings, { behavior: 'wrap' }],
          [rehypeShiki, {
            theme: 'github-dark',
            langs: ['php', 'javascript', 'typescript', 'bash', 'blade', 'json', 'html', 'css', 'sql', 'diff', 'tsx', 'jsx', 'vue']
          }]
        ]
      }
    }
  })

  return {
    slug,
    content,
    frontmatter,
    toc,
  }
}

export async function getAllDocs() {
  if (!fs.existsSync(contentDir)) return []
  const files = fs.readdirSync(contentDir)
  return files.filter(f => f.endsWith('.mdx')).map((file) => file.replace(/\.mdx$/, ''))
}
