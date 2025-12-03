'use client'

import Link from 'next/link'
import { useState } from 'react'
import { Button } from '@/components/ui/button'
import { ScrollArea } from '@/components/ui/scroll-area'
import { ChevronDown, ChevronRight } from 'lucide-react'

import { sidebarItems } from '@/lib/docs-config'

export function DocsSidebar() {
    const [expandedSections, setExpandedSections] = useState<Set<string>>(new Set(['前言', '入門']))

    const toggleSection = (sectionTitle: string) => {
        const newExpanded = new Set(expandedSections)
        if (newExpanded.has(sectionTitle)) {
            // 如果當前section已經展開，則收起它
            newExpanded.delete(sectionTitle)
        } else {
            // 否則，收起所有section，然後展開點擊的section
            newExpanded.clear()
            newExpanded.add(sectionTitle)
        }
        setExpandedSections(newExpanded)
    }

    return (
        <div className="w-64 border-r bg-background h-screen sticky top-0 hidden md:block">
            <div className="p-6 font-bold text-xl border-b flex items-center gap-2">
                <span className="text-red-600">Laravel</span> Docs（中文）
            </div>
            <ScrollArea className="h-[calc(100vh-65px)]">
                <div className="p-4 space-y-2">
                    {sidebarItems.map((section) => (
                        <div key={section.title}>
                            <button
                                onClick={() => toggleSection(section.title)}
                                className="w-full flex items-center justify-between px-4 py-2 text-sm font-semibold text-muted-foreground hover:text-foreground hover:bg-accent rounded-md transition-colors"
                            >
                                <span>{section.title}</span>
                                {expandedSections.has(section.title) ? (
                                    <ChevronDown className="h-4 w-4" />
                                ) : (
                                    <ChevronRight className="h-4 w-4" />
                                )}
                            </button>
                            {expandedSections.has(section.title) && (
                                <div className="ml-4 mt-1 space-y-1">
                                    {section.items.map((item) => (
                                        <Link key={item.href} href={item.href} className="block">
                                            <Button variant="ghost" size="sm" className="w-full justify-start font-normal text-sm">
                                                {item.title}
                                            </Button>
                                        </Link>
                                    ))}
                                </div>
                            )}
                        </div>
                    ))}
                    <div className="border-t pt-4 space-y-2">
                        <Link href="/docs/api" className="block">
                            <Button variant="ghost" size="sm" className="w-full justify-start font-normal text-sm">
                                API 文件
                            </Button>
                        </Link>
                        <Link href="/docs/releases" className="block">
                            <Button variant="ghost" size="sm" className="w-full justify-start font-normal text-sm">
                                更新日誌
                            </Button>
                        </Link>
                    </div>
                </div>
            </ScrollArea>
        </div>
    )
}
