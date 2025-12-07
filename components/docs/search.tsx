'use client'

import { useEffect, useState, useCallback, useRef } from 'react'
import { useRouter } from 'next/navigation'
import { Search, X } from 'lucide-react'
import { Button } from '@/components/ui/button'

interface PagefindResult {
    id: string
    data: () => Promise<{
        url: string
        meta: { title?: string }
        excerpt: string
    }>
}

interface PagefindSearchResult {
    url: string
    title: string
    excerpt: string
}

interface SearchButtonProps {
    variant?: 'default' | 'icon'
}

export function SearchButton({ variant = 'default' }: SearchButtonProps) {
    const [open, setOpen] = useState(false)
    const [query, setQuery] = useState('')
    const [results, setResults] = useState<PagefindSearchResult[]>([])
    const [loading, setLoading] = useState(false)
    const [selectedIndex, setSelectedIndex] = useState(0)
    const inputRef = useRef<HTMLInputElement>(null)
    const router = useRouter()
    const pagefindRef = useRef<{ search: (query: string) => Promise<{ results: PagefindResult[] }> } | null>(null)

    // Load Pagefind on first open
    useEffect(() => {
        if (open && !pagefindRef.current) {
            const loadPagefind = async () => {
                try {
                    // Check if pagefind is already loaded
                    // eslint-disable-next-line @typescript-eslint/no-explicit-any
                    if ((window as any).__pagefind) {
                        // eslint-disable-next-line @typescript-eslint/no-explicit-any
                        pagefindRef.current = (window as any).__pagefind
                        return
                    }

                    // Use a dynamic script to import the ES module
                    // eslint-disable-next-line @typescript-eslint/no-explicit-any
                    const pagefind: any = await new Promise((resolve, reject) => {
                        const script = document.createElement('script')
                        script.type = 'module'
                        script.textContent = `
                            import * as pagefind from '/pagefind/pagefind.js';
                            window.__pagefind = pagefind;
                            window.dispatchEvent(new CustomEvent('pagefind-loaded'));
                        `

                        const handleLoaded = () => {
                            window.removeEventListener('pagefind-loaded', handleLoaded)
                            // eslint-disable-next-line @typescript-eslint/no-explicit-any
                            resolve((window as any).__pagefind)
                        }

                        window.addEventListener('pagefind-loaded', handleLoaded)
                        document.head.appendChild(script)

                        // Timeout fallback
                        setTimeout(() => {
                            window.removeEventListener('pagefind-loaded', handleLoaded)
                            // eslint-disable-next-line @typescript-eslint/no-explicit-any
                            if ((window as any).__pagefind) {
                                // eslint-disable-next-line @typescript-eslint/no-explicit-any
                                resolve((window as any).__pagefind)
                            } else {
                                reject(new Error('Pagefind load timeout'))
                            }
                        }, 5000)
                    })

                    // Initialize pagefind
                    await pagefind.init()

                    // Store reference
                    pagefindRef.current = pagefind
                } catch (error) {
                    console.log('Pagefind not available:', error)
                }
            }
            loadPagefind()
        }
    }, [open])

    // Focus input when dialog opens
    useEffect(() => {
        if (open) {
            setTimeout(() => inputRef.current?.focus(), 100)
        }
    }, [open])

    // Keyboard shortcut: Cmd/Ctrl + K
    useEffect(() => {
        const handleKeyDown = (e: KeyboardEvent) => {
            if ((e.metaKey || e.ctrlKey) && e.key === 'k') {
                e.preventDefault()
                setOpen(prev => !prev)
            }
            if (e.key === 'Escape') {
                setOpen(false)
            }
        }
        document.addEventListener('keydown', handleKeyDown)
        return () => document.removeEventListener('keydown', handleKeyDown)
    }, [])

    // Search function
    const performSearch = useCallback(async (searchQuery: string) => {
        if (!searchQuery.trim() || !pagefindRef.current) {
            setResults([])
            return
        }

        setLoading(true)
        try {
            const search = await pagefindRef.current.search(searchQuery)
            const mappedResults = await Promise.all(
                search.results.slice(0, 8).map(async (result: PagefindResult) => {
                    const data = await result.data()
                    return {
                        url: data.url,
                        title: data.meta?.title || 'Untitled',
                        excerpt: data.excerpt
                    }
                })
            )
            setResults(mappedResults)
            setSelectedIndex(0)
        } catch (error) {
            console.error('Search error:', error)
            setResults([])
        } finally {
            setLoading(false)
        }
    }, [])

    // Debounced search
    useEffect(() => {
        const timer = setTimeout(() => {
            performSearch(query)
        }, 200)
        return () => clearTimeout(timer)
    }, [query, performSearch])

    // Navigate to result
    const handleSelect = (url: string) => {
        setOpen(false)
        setQuery('')
        setResults([])
        router.push(url)
    }

    // Keyboard navigation in results
    const handleKeyDown = (e: React.KeyboardEvent) => {
        if (e.key === 'ArrowDown') {
            e.preventDefault()
            setSelectedIndex(prev => Math.min(prev + 1, results.length - 1))
        } else if (e.key === 'ArrowUp') {
            e.preventDefault()
            setSelectedIndex(prev => Math.max(prev - 1, 0))
        } else if (e.key === 'Enter' && results[selectedIndex]) {
            e.preventDefault()
            handleSelect(results[selectedIndex].url)
        }
    }

    return (
        <>
            {/* Search Button */}
            {variant === 'icon' ? (
                <Button
                    variant="ghost"
                    size="icon"
                    className="h-9 w-9"
                    onClick={() => setOpen(true)}
                >
                    <Search className="h-4 w-4" />
                    <span className="sr-only">搜尋</span>
                </Button>
            ) : (
                <Button
                    variant="outline"
                    className="relative h-9 w-full justify-start rounded-md bg-muted/50 text-sm font-normal text-muted-foreground shadow-none sm:pr-12 md:w-40 lg:w-56"
                    onClick={() => setOpen(true)}
                >
                    <Search className="mr-2 h-4 w-4" />
                    <span className="hidden lg:inline-flex">搜尋文件...</span>
                    <span className="inline-flex lg:hidden">搜尋...</span>
                    <kbd className="pointer-events-none absolute right-1.5 top-1.5 hidden h-6 select-none items-center gap-1 rounded border bg-background px-1.5 font-mono text-[10px] font-medium opacity-100 sm:flex">
                        <span className="text-xs">⌘</span>K
                    </kbd>
                </Button>
            )}

            {/* Search Dialog */}
            {open && (
                <div className="fixed inset-0 z-50 flex items-start justify-center pt-[20vh]">
                    {/* Backdrop */}
                    <div
                        className="fixed inset-0 bg-black/60 dark:bg-black/80 backdrop-blur-sm"
                        onClick={() => setOpen(false)}
                    />

                    {/* Dialog */}
                    <div className="relative z-50 w-full max-w-lg rounded-lg border bg-white dark:bg-[#1a1f2e] shadow-2xl">
                        {/* Input */}
                        <div className="flex items-center border-b px-3">
                            <Search className="mr-2 h-4 w-4 shrink-0 opacity-50" />
                            <input
                                ref={inputRef}
                                type="text"
                                placeholder="搜尋文件..."
                                className="flex h-12 w-full rounded-md bg-transparent py-3 text-sm outline-none placeholder:text-gray-500 dark:text-white disabled:cursor-not-allowed disabled:opacity-50"
                                value={query}
                                onChange={(e) => setQuery(e.target.value)}
                                onKeyDown={handleKeyDown}
                            />
                            {query && (
                                <button
                                    className="ml-2 rounded-sm opacity-70 hover:opacity-100"
                                    onClick={() => setQuery('')}
                                >
                                    <X className="h-4 w-4" />
                                </button>
                            )}
                        </div>

                        {/* Results */}
                        <div className="max-h-[300px] overflow-y-auto p-2">
                            {loading && (
                                <div className="py-6 text-center text-sm text-muted-foreground">
                                    搜尋中...
                                </div>
                            )}

                            {!loading && query && results.length === 0 && (
                                <div className="py-6 text-center text-sm text-muted-foreground">
                                    找不到相關結果
                                </div>
                            )}

                            {!loading && !query && (
                                <div className="py-6 text-center text-sm text-muted-foreground">
                                    輸入關鍵字開始搜尋
                                </div>
                            )}

                            {!loading && results.map((result, index) => (
                                <button
                                    key={result.url}
                                    className={`w-full rounded-md px-3 py-2 text-left ${index === selectedIndex
                                        ? 'bg-accent text-accent-foreground'
                                        : 'hover:bg-accent/50'
                                        }`}
                                    onClick={() => handleSelect(result.url)}
                                    onMouseEnter={() => setSelectedIndex(index)}
                                >
                                    <div className="font-medium text-sm">{result.title}</div>
                                    <div
                                        className="text-xs text-muted-foreground line-clamp-2 mt-1"
                                        dangerouslySetInnerHTML={{ __html: result.excerpt }}
                                    />
                                </button>
                            ))}
                        </div>

                        {/* Footer */}
                        <div className="flex items-center justify-between border-t px-3 py-2 text-xs text-muted-foreground">
                            <div className="flex gap-2">
                                <span className="flex items-center gap-1">
                                    <kbd className="rounded border px-1">↵</kbd> 選擇
                                </span>
                                <span className="flex items-center gap-1">
                                    <kbd className="rounded border px-1">↑↓</kbd> 導航
                                </span>
                            </div>
                            <span className="flex items-center gap-1">
                                <kbd className="rounded border px-1">esc</kbd> 關閉
                            </span>
                        </div>
                    </div>
                </div>
            )}
        </>
    )
}
