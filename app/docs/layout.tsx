import { DocsSidebar } from '@/components/docs/sidebar'
import { MobileNav } from '@/components/docs/mobile-nav'
import { ModeToggle } from '@/components/mode-toggle'

export default function DocsLayout({ children }: { children: React.ReactNode }) {
    return (
        <div className="flex min-h-screen bg-background flex-col md:flex-row">
            <div className="md:hidden p-4 border-b flex items-center justify-between sticky top-0 bg-background z-10">
                <div className="flex items-center">
                    <MobileNav />
                    <span className="ml-2 font-bold text-lg"><span className="text-red-600">Laravel</span> Docs</span>
                </div>
                <ModeToggle />
            </div>
            <DocsSidebar />
            <main className="flex-1 relative overflow-hidden">
                {children}
            </main>
        </div>
    )
}
