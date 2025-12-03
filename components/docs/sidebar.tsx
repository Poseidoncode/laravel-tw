'use client'

import Link from 'next/link'
import { useState } from 'react'
import { Button } from '@/components/ui/button'
import { ScrollArea } from '@/components/ui/scroll-area'
import { ChevronDown, ChevronRight } from 'lucide-react'

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
            { title: '目錄結構', href: '/docs/structure' },
            { title: '生命週期', href: '/docs/lifecycle' },
            { title: '前端', href: '/docs/frontend' },
            { title: '啟動套件', href: '/docs/starter-kits' },
            { title: '部署', href: '/docs/deployment' },
        ]
    },
    {
        title: '架構',
        items: [
            { title: '請求生命週期', href: '/docs/lifecycle' },
            { title: 'Service Container', href: '/docs/container' },
            { title: 'Service Providers', href: '/docs/providers' },
            { title: 'Facades', href: '/docs/facades' },
        ]
    },
    {
        title: '基礎功能',
        items: [
            { title: '路由', href: '/docs/routing' },
            { title: '中介軟體', href: '/docs/middleware' },
            { title: 'CSRF 保護', href: '/docs/csrf' },
            { title: '控制器', href: '/docs/controllers' },
            { title: '請求', href: '/docs/requests' },
            { title: '回應', href: '/docs/responses' },
            { title: '視圖', href: '/docs/views' },
            { title: 'Blade 樣板', href: '/docs/blade' },
            { title: '資產打包', href: '/docs/vite' },
            { title: 'URL 產生', href: '/docs/urls' },
            { title: 'Session', href: '/docs/session' },
            { title: '驗證', href: '/docs/validation' },
            { title: '錯誤處理', href: '/docs/errors' },
            { title: '日誌', href: '/docs/logging' },
        ]
    },
    {
        title: '深入探討',
            items: [
                { title: 'Artisan 命令列', href: '/docs/artisan' },
                { title: '廣播', href: '/docs/broadcasting' },
                { title: '快取', href: '/docs/cache' },
                { title: '集合', href: '/docs/collections' },
                { title: '並行', href: '/docs/concurrency' },
                { title: 'Context', href: '/docs/context' },
                { title: '契約', href: '/docs/contracts' },
                { title: '事件', href: '/docs/events' },
                { title: '檔案儲存', href: '/docs/filesystem' },
                { title: '輔助函式', href: '/docs/helpers' },
                { title: 'HTTP 客戶端', href: '/docs/http-client' },
                { title: '本地化', href: '/docs/localization' },
                { title: '郵件', href: '/docs/mail' },
                { title: '通知', href: '/docs/notifications' },
                { title: '套件', href: '/docs/packages' },
                { title: '程序', href: '/docs/processes' },
                { title: '佇列', href: '/docs/queues' },
                { title: '速率限制', href: '/docs/rate-limiting' },
                { title: '字串', href: '/docs/strings' },
                { title: '任務排程', href: '/docs/scheduling' },
            ]
    },
    {
        title: '安全性',
        items: [
            { title: '驗證', href: '/docs/authentication' },
            { title: '授權', href: '/docs/authorization' },
            { title: '加密', href: '/docs/encryption' },
            { title: '雜湊', href: '/docs/hashing' },
        ]
    },
    {
        title: '資料庫',
        items: [
            { title: '資料庫基礎', href: '/docs/database' },
            { title: 'Query Builder', href: '/docs/queries' },
            { title: '分頁', href: '/docs/pagination' },
            { title: '遷移', href: '/docs/migrations' },
            { title: 'Seeding', href: '/docs/seeding' },
            { title: 'Redis', href: '/docs/redis' },
        ]
    },
    {
        title: 'Eloquent ORM',
        items: [
            { title: 'Eloquent ORM', href: '/docs/eloquent' },
            { title: 'Eloquent 關聯', href: '/docs/eloquent-relationships' },
            { title: 'Eloquent 集合', href: '/docs/eloquent-collections' },
            { title: 'Eloquent Factories', href: '/docs/eloquent-factories' },
            { title: 'Eloquent Mutators', href: '/docs/eloquent-mutators' },
            { title: 'Eloquent Resources', href: '/docs/eloquent-resources' },
            { title: 'Eloquent Serialization', href: '/docs/eloquent-serialization' },
        ]
    },
    {
        title: '測試',
        items: [
            { title: '測試概論', href: '/docs/testing' },
            { title: 'HTTP 測試', href: '/docs/http-tests' },
            { title: 'Console 測試', href: '/docs/console-tests' },
            { title: '資料庫測試', href: '/docs/database-testing' },
            { title: 'Dusk', href: '/docs/dusk' },
        ]
    },
    {
        title: '其他',
        items: [
            { title: 'Artisan Console', href: '/docs/artisan' },
            { title: '廣播', href: '/docs/broadcasting' },
            { title: '快取', href: '/docs/cache' },
            { title: '集合', href: '/docs/collections' },
            { title: '事件', href: '/docs/events' },
            { title: '檔案儲存', href: '/docs/filesystem' },
            { title: '輔助函式', href: '/docs/helpers' },
            { title: '郵件', href: '/docs/mail' },
            { title: '通知', href: '/docs/notifications' },
            { title: '佇列', href: '/docs/queues' },
            { title: '排程', href: '/docs/scheduling' },
        ]
    },
    {
        title: '官方套件',
        items: [
            { title: 'Billing', href: '/docs/billing' },
            { title: 'Cashier Paddle', href: '/docs/cashier-paddle' },
            { title: 'Envoy', href: '/docs/envoy' },
            { title: '錯誤處理', href: '/docs/errors' },
            { title: 'Folio', href: '/docs/folio' },
            { title: 'Fortify', href: '/docs/fortify' },
            { title: 'Homestead', href: '/docs/homestead' },
            { title: 'Horizon', href: '/docs/horizon' },
            { title: 'HTTP 客戶端', href: '/docs/http-client' },
            { title: '授權條款', href: '/docs/license' },
            { title: '本地化', href: '/docs/localization' },
            { title: '日誌', href: '/docs/logging' },
            { title: 'MCP', href: '/docs/mcp' },
            { title: 'Mix', href: '/docs/mix' },
            { title: 'Mocking', href: '/docs/mocking' },
            { title: 'MongoDB', href: '/docs/mongodb' },
            { title: 'Octane', href: '/docs/octane' },
            { title: '套件', href: '/docs/packages' },
            { title: 'Passport', href: '/docs/passport' },
            { title: '重設密碼', href: '/docs/passwords' },
            { title: 'Pennant', href: '/docs/pennant' },
            { title: 'Pint', href: '/docs/pint' },
            { title: 'Precognition', href: '/docs/precognition' },
            { title: '程序', href: '/docs/processes' },
            { title: '提示', href: '/docs/prompts' },
            { title: 'Pulse', href: '/docs/pulse' },
            { title: '速率限制', href: '/docs/rate-limiting' },
            { title: '說明文件', href: '/docs/readme' },
            { title: 'HTTP 重新導向', href: '/docs/redirects' },
            { title: 'Reverb', href: '/docs/reverb' },
            { title: 'Sail', href: '/docs/sail' },
            { title: 'Sanctum', href: '/docs/sanctum' },
            { title: 'Scout', href: '/docs/scout' },
            { title: 'Socialite', href: '/docs/socialite' },
            { title: '字串', href: '/docs/strings' },
            { title: 'Telescope', href: '/docs/telescope' },
            { title: '升級指南', href: '/docs/upgrade' },
            { title: 'URL 產生', href: '/docs/urls' },
            { title: 'Valet', href: '/docs/valet' },
            { title: '驗證', href: '/docs/validation' },
            { title: '電子郵件驗證', href: '/docs/verification' },
            { title: '資源打包', href: '/docs/vite' },
            { title: 'Context', href: '/docs/context' },
            { title: '契約', href: '/docs/contracts' },
            { title: '貢獻指南', href: '/docs/contributions' },
            
            { title: '文件', href: '/docs/documentation' },
            { title: '並行', href: '/docs/concurrency' },
        ]
    }
]

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
