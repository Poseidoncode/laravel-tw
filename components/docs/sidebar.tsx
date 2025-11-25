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
            { title: '目錄結構', href: '/docs/structure' },
            { title: '生命週期', href: '/docs/lifecycle' },
        ]
    },
    {
        title: '架構',
        items: [
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
        title: '安全性',
        items: [
            { title: '驗證', href: '/docs/authentication' },
            { title: '授權', href: '/docs/authorization' },
            { title: '加密', href: '/docs/encryption' },
            { title: '雜湊', href: '/docs/hashing' },
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
            { title: 'Cashier (Paddle)', href: '/docs/cashier-paddle' },
            { title: 'Envoy', href: '/docs/envoy' },
            { title: 'Errors', href: '/docs/errors' },
            { title: 'Folio', href: '/docs/folio' },
            { title: 'Fortify', href: '/docs/fortify' },
            { title: 'Frontend', href: '/docs/frontend' },
            { title: 'Homestead', href: '/docs/homestead' },
            { title: 'Horizon', href: '/docs/horizon' },
            { title: 'HTTP Client', href: '/docs/http-client' },
            { title: 'License', href: '/docs/license' },
            { title: 'Localization', href: '/docs/localization' },
            { title: 'Logging', href: '/docs/logging' },
            { title: 'MCP', href: '/docs/mcp' },
            { title: 'Mix', href: '/docs/mix' },
            { title: 'Mocking', href: '/docs/mocking' },
            { title: 'MongoDB', href: '/docs/mongodb' },
            { title: 'Octane', href: '/docs/octane' },
            { title: 'Packages', href: '/docs/packages' },
            { title: 'Passport', href: '/docs/passport' },
            { title: 'Passwords', href: '/docs/passwords' },
            { title: 'Pennant', href: '/docs/pennant' },
            { title: 'Pint', href: '/docs/pint' },
            { title: 'Precognition', href: '/docs/precognition' },
            { title: 'Processes', href: '/docs/processes' },
            { title: 'Prompts', href: '/docs/prompts' },
            { title: 'Pulse', href: '/docs/pulse' },
            { title: 'Rate Limiting', href: '/docs/rate-limiting' },
            { title: 'Readme', href: '/docs/readme' },
            { title: 'Redirects', href: '/docs/redirects' },
            { title: 'Reverb', href: '/docs/reverb' },
            { title: 'Sail', href: '/docs/sail' },
            { title: 'Sanctum', href: '/docs/sanctum' },
            { title: 'Scout', href: '/docs/scout' },
            { title: 'Socialite', href: '/docs/socialite' },
            { title: 'Starter Kits', href: '/docs/starter-kits' },
            { title: 'Strings', href: '/docs/strings' },
            { title: 'Telescope', href: '/docs/telescope' },
            { title: 'Upgrade', href: '/docs/upgrade' },
            { title: 'URLs', href: '/docs/urls' },
            { title: 'Valet', href: '/docs/valet' },
            { title: 'Validation', href: '/docs/validation' },
            { title: 'Verification', href: '/docs/verification' },
            { title: 'Vite', href: '/docs/vite' },
            { title: 'Context', href: '/docs/context' },
            { title: 'Contracts', href: '/docs/contracts' },
            { title: 'Contributions', href: '/docs/contributions' },
            { title: 'Deployment', href: '/docs/deployment' },
            { title: 'Documentation', href: '/docs/documentation' },
            { title: 'Concurrency', href: '/docs/concurrency' },
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
