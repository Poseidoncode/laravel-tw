/**
 * 側邊欄導航項目配置
 *
 * 定義文檔網站的側邊欄導航結構，按照 Laravel 文檔的章節組織。
 * 每個項目包含顯示標題和對應的路由 href。
 *
 * @example
 * ```typescript
 * import { sidebarItems } from '@/lib/docs-config'
 *
 * // 使用配置渲染導航
 * sidebarItems.forEach(section => {
 *   console.log(section.title) // "前言", "入門", etc.
 *   section.items.forEach(item => {
 *     console.log(item.title, item.href)
 *   })
 * })
 * ```
 */
export const sidebarItems = [
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
            { title: 'MongoDB', href: '/docs/mongodb' },
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
            { title: '瀏覽器測試', href: '/docs/dusk' },
            { title: '資料庫測試', href: '/docs/database-testing' },
            { title: 'Mocking', href: '/docs/mocking' },
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
