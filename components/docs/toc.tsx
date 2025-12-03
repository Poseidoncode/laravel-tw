'use client'

import { useEffect, useState } from 'react'
import { ScrollArea } from '@/components/ui/scroll-area'

export type TocItem = {
    id: string
    text: string
    level: number
}

type TocProps = {
    items: TocItem[]
}

export function TableOfContents({ items }: TocProps) {
    const [activeId, setActiveId] = useState<string>('')

    useEffect(() => {
        const observer = new IntersectionObserver(
            (entries) => {
                entries.forEach((entry) => {
                    if (entry.isIntersecting) {
                        setActiveId(entry.target.id)
                    }
                })
            },
            {
                rootMargin: '-80px 0px -80% 0px',
            }
        )

        // Observe all headings
        items.forEach((item) => {
            const element = document.getElementById(item.id)
            if (element) {
                observer.observe(element)
            }
        })

        return () => {
            items.forEach((item) => {
                const element = document.getElementById(item.id)
                if (element) {
                    observer.unobserve(element)
                }
            })
        }
    }, [items])

    if (items.length === 0) {
        return null
    }

    return (
        <div className="hidden xl:block w-64 sticky top-0 h-screen">
            <div className="p-6">
                <h4 className="text-sm font-semibold mb-4 text-foreground">On this page</h4>
                <ScrollArea className="h-[calc(100vh-120px)]">
                    <nav className="space-y-1">
                        {items.map((item) => {
                            const isActive = activeId === item.id
                            const paddingLeft = (item.level - 2) * 12 // h2 = 0, h3 = 12px, h4 = 24px

                            return (
                                <a
                                    key={item.id}
                                    href={`#${item.id}`}
                                    className={`
                    block text-sm py-1 transition-colors
                    ${isActive
                                            ? 'text-foreground font-medium border-l-2 border-foreground -ml-px'
                                            : 'text-muted-foreground hover:text-foreground border-l-2 border-transparent -ml-px'
                                        }
                  `}
                                    style={{ paddingLeft: `${paddingLeft + 12}px` }}
                                    onClick={(e) => {
                                        e.preventDefault()
                                        const element = document.getElementById(item.id)
                                        if (element) {
                                            const top = element.getBoundingClientRect().top + window.scrollY - 80
                                            window.scrollTo({ top, behavior: 'smooth' })
                                        }
                                    }}
                                >
                                    {item.text}
                                </a>
                            )
                        })}
                    </nav>
                </ScrollArea>
            </div>
        </div>
    )
}
