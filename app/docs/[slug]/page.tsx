import { getDocBySlug, getAllDocs } from '@/lib/docs'
import { notFound } from 'next/navigation'
import { TableOfContents } from '@/components/docs/toc'

export async function generateStaticParams() {
    const docs = await getAllDocs()
    return docs.map((slug) => ({
        slug,
    }))
}

export default async function DocPage({ params }: { params: Promise<{ slug: string }> }) {
    const { slug } = await params
    const doc = await getDocBySlug(slug)

    if (!doc) {
        notFound()
    }

    return (
        <div className="container mx-auto py-10 px-4 md:px-6">
            <div className="flex gap-8 justify-center items-start">
                <div className="flex-1 max-w-3xl min-w-0">
                    <div className="mb-8">
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
                </div>
                <TableOfContents items={doc.toc} />
            </div>
        </div>
    )
}
