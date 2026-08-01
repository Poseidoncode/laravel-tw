import { getAllDocs } from '@/lib/docs'
import type { MetadataRoute } from 'next'
import fs from 'fs'
import path from 'path'

export const dynamic = 'force-static'
export const revalidate = 604800

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const slugs = await getAllDocs()
  const baseUrl = (process.env.NEXT_PUBLIC_SITE_URL || 'https://laravel12-zh-tw.hulstem.com').replace(/\/+$/, '')

  const docEntries: MetadataRoute.Sitemap = slugs.map((slug) => {
    const filePath = path.join(process.cwd(), 'content/docs', `${slug}.mdx`)
    const { mtime } = fs.statSync(filePath)

    return {
      url: `${baseUrl}/docs/${slug}`,
      lastModified: mtime,
      changeFrequency: 'weekly' as const,
      priority: 0.8,
    }
  })

  return [
    {
      url: baseUrl,
      lastModified: new Date(),
      changeFrequency: 'weekly' as const,
      priority: 1.0,
    },
    ...docEntries,
  ]
}
