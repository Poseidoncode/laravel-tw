import { getDocBySlug } from '@/lib/docs'
import { notFound } from 'next/navigation'
import { TableOfContents } from '@/components/docs/toc'
import { CodeCopyButtons } from '@/components/docs/code-copy-button'

const baseUrl = (process.env.NEXT_PUBLIC_SITE_URL || 'https://laravel12-zh-tw.hulstem.com').replace(/\/+$/, '')

export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }) {
    const { slug } = await params
    const doc = await getDocBySlug(slug)

    if (!doc) {
        return {}
    }

    const title = doc.frontmatter.title
    const description = doc.frontmatter.description || ''

    return {
        title,
        description: description || title,
        keywords: doc.frontmatter.keywords?.split(',').map(k => k.trim()) ?? [],
        alternates: {
            canonical: `/docs/${slug}`,
        },
        openGraph: {
            title,
            description: description || title,
            type: 'article',
            url: `/docs/${slug}`,
            siteName: 'Laravel 12 繁體中文文檔',
            locale: 'zh_TW',
            images: [
                {
                    url: '/og-image.png',
                    width: 1200,
                    height: 630,
                    alt: title,
                },
            ],
        },
        twitter: {
            card: 'summary_large_image',
            title,
            description: description || title,
            images: ['/og-image.png'],
        },
    }
}

export default async function DocPage({ params }: { params: Promise<{ slug: string }> }) {
    const { slug } = await params
    const doc = await getDocBySlug(slug)

    if (!doc) {
        notFound()
    }

    const title = doc.frontmatter.title
    const description = doc.frontmatter.description || ''
    const fullUrl = `${baseUrl}/docs/${slug}`

    const articleLd = {
        '@context': 'https://schema.org',
        '@type': 'TechArticle',
        headline: title,
        description,
        url: fullUrl,
        inLanguage: 'zh-TW',
    }

    const breadcrumbLd = {
        '@context': 'https://schema.org',
        '@type': 'BreadcrumbList',
        itemListElement: [
            {
                '@type': 'ListItem',
                position: 1,
                name: '首頁',
                item: `${baseUrl}/`,
            },
            {
                '@type': 'ListItem',
                position: 2,
                name: title,
                item: fullUrl,
            },
        ],
    }

    return (
        <div className="container mx-auto py-10 px-4 md:px-6">
            <CodeCopyButtons />
            <div className="flex gap-8 justify-center items-start">
                <div className="flex-1 max-w-3xl min-w-0">
                    <div className="mb-0">
                        <h1 className="scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl">
                            {doc.frontmatter.title}
                        </h1>
                        {doc.frontmatter.description && (
                            <p className="text-xl text-muted-foreground mt-2">
                                {doc.frontmatter.description}
                            </p>
                        )}
                    </div>
                    <article className="prose prose-slate dark:prose-invert max-w-none overflow-x-auto">
                        {doc.content}
                    </article>
                    <script
                        type="application/ld+json"
                        dangerouslySetInnerHTML={{
                            __html: JSON.stringify([articleLd, breadcrumbLd]).replace(/</g, '\\u003c'),
                        }}
                    />
                </div>
                <TableOfContents items={doc.toc} />
            </div>
        </div>
    )
}
