'use client'

import { useEffect } from 'react'

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

export function CodeCopyButtons() {
    useEffect(() => {
        const addCopyButtons = () => {
            const codeBlocks = document.querySelectorAll('pre')

            codeBlocks.forEach((pre) => {
                // Skip if button already exists
                if (pre.parentElement?.classList.contains('code-block-wrapper')) {
                    return
                }

                // Create wrapper
                const wrapper = document.createElement('div')
                wrapper.className = 'code-block-wrapper relative group'

                // Wrap the pre element
                pre.parentNode?.insertBefore(wrapper, pre)
                wrapper.appendChild(pre)

                // Create copy button
                const button = document.createElement('button')
                button.className = 'code-copy-button absolute top-3 right-3 p-2 text-gray-400 hover:text-white transition-colors opacity-0 group-hover:opacity-100'
                button.setAttribute('aria-label', 'Copy code to clipboard')
                button.innerHTML = `
          <svg class="copy-icon" width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M6.2474 6.25033V2.91699H17.0807V13.7503H13.7474M13.7474 6.25033V17.0837H2.91406V6.25033H13.7474Z" stroke="currentColor" stroke-width="1.2" stroke-linecap="round"></path>
          </svg>
          <svg class="check-icon hidden" width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M17.5 5L7.5 15L2.5 10" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
          </svg>
        `

                // Add click handler
                button.addEventListener('click', async () => {
                    const code = pre.textContent || ''
                    try {
                        await navigator.clipboard.writeText(code)

                        // Show check icon
                        const copyIcon = button.querySelector('.copy-icon')
                        const checkIcon = button.querySelector('.check-icon')
                        copyIcon?.classList.add('hidden')
                        checkIcon?.classList.remove('hidden')

                        // Reset after 2 seconds
                        setTimeout(() => {
                            copyIcon?.classList.remove('hidden')
                            checkIcon?.classList.add('hidden')
                        }, 2000)
                    } catch (err) {
                        console.error('Failed to copy code:', err)
                    }
                })

                wrapper.appendChild(button)
            })
        }

        // Add buttons on mount
        addCopyButtons()

        // Re-add buttons if content changes (for dynamic content)
        const observer = new MutationObserver(addCopyButtons)
        observer.observe(document.body, { childList: true, subtree: true })

        return () => observer.disconnect()
    }, [])

    return null
}
