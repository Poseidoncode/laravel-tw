import { DocsSidebar } from '@/components/docs/sidebar'
import { MobileNav } from '@/components/docs/mobile-nav'
import { ModeToggle } from '@/components/mode-toggle'
import { SearchButton } from '@/components/docs/search'

export default function DocsLayout({ children }: { children: React.ReactNode }) {
    return (
        <div className="flex min-h-screen bg-background flex-col md:flex-row">
            <div className="md:hidden p-4 border-b flex items-center justify-between sticky top-0 bg-background z-10">
                <div className="flex items-center">
                    <MobileNav />
                    <span className="ml-2 font-bold text-base whitespace-nowrap"><span className="text-red-600 mr-0.5">Laravel</span>Docs（中文）</span>
                </div>
                <div className="flex items-center gap-2">
                    <SearchButton variant="icon" />
                    <ModeToggle />
                </div>
            </div>
            <DocsSidebar />
            <main className="flex-1 relative">
                {children}
            </main>
        </div>
    )
}
