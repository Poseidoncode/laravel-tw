import { getAllDocs } from '@/lib/docs'

export async function generateStaticParams() {
    const docs = await getAllDocs()
    return docs.map((slug) => ({ slug }))
}

export default async function DocsSlugLayout({ children }: { children: React.ReactNode }) {
    return <>{children}</>
}
