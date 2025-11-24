import Link from 'next/link'
import { Button } from '@/components/ui/button'
import { ScrollArea } from '@/components/ui/scroll-area'

const sidebarItems = [
    {
        title: '前言',
        items: [
            { title: '發行說明', href: '/docs/releases' },
        ]
    },
    {
        title: '入門',
        items: [
            { title: '安裝', href: '/docs/installation' },
            { title: '配置', href: '/docs/configuration' },
        ]
    }
]

export function DocsSidebar() {
    return (
        <div className="w-64 border-r bg-background h-screen sticky top-0 hidden md:block">
            <div className="p-6 font-bold text-xl border-b flex items-center gap-2">
                <span className="text-red-600">Laravel</span> Docs CN
            </div>
            <ScrollArea className="h-[calc(100vh-65px)]">
                <div className="p-4 space-y-6">
                    {sidebarItems.map((section) => (
                        <div key={section.title}>
                            <h4 className="mb-2 px-4 text-sm font-semibold text-muted-foreground">{section.title}</h4>
                            <div className="space-y-1">
                                {section.items.map((item) => (
                                    <Link key={item.href} href={item.href} className="block">
                                        <Button variant="ghost" size="sm" className="w-full justify-start font-normal">
                                            {item.title}
                                        </Button>
                                    </Link>
                                ))}
                            </div>
                        </div>
                    ))}
                </div>
            </ScrollArea>
        </div>
    )
}
