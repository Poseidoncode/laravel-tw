import { DocsSidebar } from '@/components/docs/sidebar'

export default function DocsLayout({ children }: { children: React.ReactNode }) {
    return (
        <div className="flex min-h-screen bg-background">
            <DocsSidebar />
            <main className="flex-1 relative">
                {children}
            </main>
        </div>
    )
}
