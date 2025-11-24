import { getDocBySlug, getAllDocs } from '@/lib/docs'
import { notFound } from 'next/navigation'

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
        <div className="container mx-auto py-10">
            <div className="mx-auto max-w-3xl">
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
                <article className="prose prose-slate dark:prose-invert max-w-none">
                    {doc.content}
                </article>
            </div>
        </div>
    )
}
