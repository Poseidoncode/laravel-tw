'use client'

import Link from 'next/link'
import { useState, useEffect } from 'react'
import { Button } from '@/components/ui/button'
import { ScrollArea } from '@/components/ui/scroll-area'
import { Sheet, SheetContent, SheetTrigger, SheetTitle, SheetDescription } from '@/components/ui/sheet'
import { Menu, ChevronDown, ChevronRight } from 'lucide-react'
import { sidebarItems } from '@/lib/docs-config'

export function MobileNav() {
    const [open, setOpen] = useState(false)
    const [expandedSections, setExpandedSections] = useState<Set<string>>(new Set(['前言', '入門']))
    const [mounted, setMounted] = useState(false)

    useEffect(() => {
        setMounted(true)
    }, [])

    const toggleSection = (sectionTitle: string) => {
        const newExpanded = new Set(expandedSections)
        if (newExpanded.has(sectionTitle)) {
            newExpanded.delete(sectionTitle)
        } else {
            newExpanded.clear()
            newExpanded.add(sectionTitle)
        }
        setExpandedSections(newExpanded)
    }

    if (!mounted) {
        return (
            <Button variant="ghost" size="icon" className="md:hidden">
                <Menu className="h-6 w-6" />
                <span className="sr-only">Toggle menu</span>
            </Button>
        )
    }

    return (
        <Sheet open={open} onOpenChange={setOpen}>
            <SheetTrigger asChild>
                <Button variant="ghost" size="icon" className="md:hidden">
                    <Menu className="h-6 w-6" />
                    <span className="sr-only">Toggle menu</span>
                </Button>
            </SheetTrigger>
            <SheetContent side="left" className="w-[300px] sm:w-[400px] p-0">
                <SheetTitle className="sr-only">Navigation Menu</SheetTitle>
                <SheetDescription className="sr-only">
                    Browse the documentation sections and pages.
                </SheetDescription>
                <div className="p-6 font-bold text-lg border-b flex items-center gap-2">
                    <span className="text-red-600 mr-0.5">Laravel</span>
                    <span className="whitespace-nowrap">Docs（中文）</span>
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
                                            <Link
                                                key={item.href}
                                                href={item.href}
                                                className="block"
                                                onClick={() => setOpen(false)}
                                            >
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
                            <Link href="/docs/api" className="block" onClick={() => setOpen(false)}>
                                <Button variant="ghost" size="sm" className="w-full justify-start font-normal text-sm">
                                    API 文件
                                </Button>
                            </Link>
                            <Link href="/docs/releases" className="block" onClick={() => setOpen(false)}>
                                <Button variant="ghost" size="sm" className="w-full justify-start font-normal text-sm">
                                    更新日誌
                                </Button>
                            </Link>
                        </div>
                    </div>
                </ScrollArea>
            </SheetContent>
        </Sheet>
    )
}
