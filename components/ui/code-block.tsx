'use client'

import { useState } from 'react'

interface CodeBlockProps {
    children: React.ReactNode
    className?: string
    raw?: string
}

const CopyIcon = () => (
    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M6.2474 6.25033V2.91699H17.0807V13.7503H13.7474M13.7474 6.25033V17.0837H2.91406V6.25033H13.7474Z" stroke="currentColor" strokeWidth="1.2" strokeLinecap="round"></path>
    </svg>
)

const CheckIcon = () => (
    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M17.5 5L7.5 15L2.5 10" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"></path>
    </svg>
)

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
                className="absolute top-6 right-3 p-2 text-foreground transition-colors"
                aria-label="Copy code to clipboard"
            >
                {copied ? (
                    <CheckIcon />
                ) : (
                    <CopyIcon />
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
