import fs from 'fs'
import path from 'path'
import { compileMDX } from 'next-mdx-remote/rsc'
import rehypeSlug from 'rehype-slug'
import rehypeAutolinkHeadings from 'rehype-autolink-headings'
import rehypeShiki from '@shikijs/rehype'
import { CodeBlock } from '@/components/ui/code-block'
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

  // Extract TOC from source
  const toc: TocItem[] = []
  const lines = source.split('\n')
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

  const { content, frontmatter } = await compileMDX<{ title: string; description?: string }>({
    source,
    components: {
      pre: ({ children, ...props }: any) => {
        // Extract code content and language from children
        const codeElement = children?.props
        const code = codeElement?.children || ''
        const className = codeElement?.className || ''

        return (
          <CodeBlock className={className} raw={typeof code === 'string' ? code : undefined}>
            {children}
          </CodeBlock>
        )
      }
    },
    options: {
      parseFrontmatter: true,
      mdxOptions: {
        rehypePlugins: [
          rehypeSlug,
          [rehypeAutolinkHeadings, { behavior: 'wrap' }],
          [rehypeShiki, {
            themes: {
              light: 'github-light',
              dark: 'github-dark',
            },
            defaultColor: 'dark',
            langs: ['php', 'javascript', 'typescript', 'bash', 'blade', 'json', 'html', 'css', 'sql', 'diff']
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
