import fs from 'fs'
import path from 'path'
import { compileMDX } from 'next-mdx-remote/rsc'
import rehypeSlug from 'rehype-slug'
import rehypeAutolinkHeadings from 'rehype-autolink-headings'

const contentDir = path.join(process.cwd(), 'content/docs')

export type Doc = {
  slug: string
  content: React.ReactNode
  frontmatter: {
    title: string
    description?: string
  }
}

export async function getDocBySlug(slug: string): Promise<Doc | null> {
  const fileName = slug + '.mdx'
  const filePath = path.join(contentDir, fileName)
  
  if (!fs.existsSync(filePath)) {
    return null
  }

  const source = fs.readFileSync(filePath, 'utf8')
  
  const { content, frontmatter } = await compileMDX<{ title: string; description?: string }>({
    source,
    options: { 
      parseFrontmatter: true,
      mdxOptions: {
        rehypePlugins: [
          rehypeSlug,
          [rehypeAutolinkHeadings, { behavior: 'wrap' }]
        ]
      }
    }
  })

  return {
    slug,
    content,
    frontmatter,
  }
}

export async function getAllDocs() {
  if (!fs.existsSync(contentDir)) return []
  const files = fs.readdirSync(contentDir)
  return files.filter(f => f.endsWith('.mdx')).map((file) => file.replace(/\.mdx$/, ''))
}
