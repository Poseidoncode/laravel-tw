import { DocsSidebar } from '@/components/docs/sidebar'
import { MobileNav } from '@/components/docs/mobile-nav'

export default function DocsLayout({ children }: { children: React.ReactNode }) {
    return (
        <div className="flex min-h-screen bg-background flex-col md:flex-row">
            <div className="md:hidden p-4 border-b flex items-center sticky top-0 bg-background z-10">
                <MobileNav />
                <span className="ml-2 font-bold text-lg"><span className="text-red-600">Laravel</span> Docs</span>
            </div>
            <DocsSidebar />
            <main className="flex-1 relative">
                {children}
            </main>
        </div>
    )
}
