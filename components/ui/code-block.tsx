'use client'

import { Check, Copy } from 'lucide-react'
import { useState } from 'react'

interface CodeBlockProps {
    children: React.ReactNode
    className?: string
    raw?: string
}

export function CodeBlock({ children, className, raw }: CodeBlockProps) {
    const [copied, setCopied] = useState(false)

    const handleCopy = async () => {
        // Extract text content from children
        const code = raw || extractTextContent(children)

        try {
            await navigator.clipboard.writeText(code)
            setCopied(true)
            setTimeout(() => setCopied(false), 2000)
        } catch (err) {
            console.error('Failed to copy code:', err)
        }
    }

    return (
        <div className="relative group max-w-full overflow-hidden">
            <pre className={`${className} overflow-x-auto max-w-full`}>
                {children}
            </pre>
            <button
                onClick={handleCopy}
                className="absolute top-8 right-3 p-2 rounded-md bg-zinc-700 hover:bg-zinc-600 text-zinc-100 opacity-0 group-hover:opacity-100 transition-opacity duration-200"
                aria-label="Copy code to clipboard"
            >
                {copied ? (
                    <Check className="h-4 w-4" />
                ) : (
                    <Copy className="h-4 w-4" />
                )}
            </button>
        </div>
    )
}

function extractTextContent(node: React.ReactNode): string {
    if (typeof node === 'string') {
        return node
    }

    if (typeof node === 'number') {
        return String(node)
    }

    if (Array.isArray(node)) {
        return node.map(extractTextContent).join('')
    }

    if (node && typeof node === 'object' && 'props' in node) {
        const props = (node as any).props
        if (props.children) {
            return extractTextContent(props.children)
        }
    }

    return ''
}
