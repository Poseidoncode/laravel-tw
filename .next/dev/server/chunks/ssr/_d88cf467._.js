module.exports = [
"[project]/lib/utils.ts [app-rsc] (ecmascript)", ((__turbopack_context__) => {
"use strict";

__turbopack_context__.s([
    "cn",
    ()=>cn
]);
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$clsx$2f$dist$2f$clsx$2e$mjs__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/clsx/dist/clsx.mjs [app-rsc] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$tailwind$2d$merge$2f$dist$2f$bundle$2d$mjs$2e$mjs__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/tailwind-merge/dist/bundle-mjs.mjs [app-rsc] (ecmascript)");
;
;
function cn(...inputs) {
    return (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$tailwind$2d$merge$2f$dist$2f$bundle$2d$mjs$2e$mjs__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["twMerge"])((0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$clsx$2f$dist$2f$clsx$2e$mjs__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["clsx"])(inputs));
}
}),
"[project]/components/ui/button.tsx [app-rsc] (ecmascript)", ((__turbopack_context__) => {
"use strict";

__turbopack_context__.s([
    "Button",
    ()=>Button,
    "buttonVariants",
    ()=>buttonVariants
]);
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/next/dist/server/route-modules/app-page/vendored/rsc/react-jsx-dev-runtime.js [app-rsc] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f40$radix$2d$ui$2f$react$2d$slot$2f$dist$2f$index$2e$mjs__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/@radix-ui/react-slot/dist/index.mjs [app-rsc] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$class$2d$variance$2d$authority$2f$dist$2f$index$2e$mjs__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/class-variance-authority/dist/index.mjs [app-rsc] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$lib$2f$utils$2e$ts__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/lib/utils.ts [app-rsc] (ecmascript)");
;
;
;
;
const buttonVariants = (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$class$2d$variance$2d$authority$2f$dist$2f$index$2e$mjs__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["cva"])("inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium transition-all disabled:pointer-events-none disabled:opacity-50 [&_svg]:pointer-events-none [&_svg:not([class*='size-'])]:size-4 shrink-0 [&_svg]:shrink-0 outline-none focus-visible:border-ring focus-visible:ring-ring/50 focus-visible:ring-[3px] aria-invalid:ring-destructive/20 dark:aria-invalid:ring-destructive/40 aria-invalid:border-destructive", {
    variants: {
        variant: {
            default: "bg-primary text-primary-foreground hover:bg-primary/90",
            destructive: "bg-destructive text-white hover:bg-destructive/90 focus-visible:ring-destructive/20 dark:focus-visible:ring-destructive/40 dark:bg-destructive/60",
            outline: "border bg-background shadow-xs hover:bg-accent hover:text-accent-foreground dark:bg-input/30 dark:border-input dark:hover:bg-input/50",
            secondary: "bg-secondary text-secondary-foreground hover:bg-secondary/80",
            ghost: "hover:bg-accent hover:text-accent-foreground dark:hover:bg-accent/50",
            link: "text-primary underline-offset-4 hover:underline"
        },
        size: {
            default: "h-9 px-4 py-2 has-[>svg]:px-3",
            sm: "h-8 rounded-md gap-1.5 px-3 has-[>svg]:px-2.5",
            lg: "h-10 rounded-md px-6 has-[>svg]:px-4",
            icon: "size-9",
            "icon-sm": "size-8",
            "icon-lg": "size-10"
        }
    },
    defaultVariants: {
        variant: "default",
        size: "default"
    }
});
function Button({ className, variant, size, asChild = false, ...props }) {
    const Comp = asChild ? __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f40$radix$2d$ui$2f$react$2d$slot$2f$dist$2f$index$2e$mjs__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["Slot"] : "button";
    return /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["jsxDEV"])(Comp, {
        "data-slot": "button",
        className: (0, __TURBOPACK__imported__module__$5b$project$5d2f$lib$2f$utils$2e$ts__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["cn"])(buttonVariants({
            variant,
            size,
            className
        })),
        ...props
    }, void 0, false, {
        fileName: "[project]/components/ui/button.tsx",
        lineNumber: 52,
        columnNumber: 5
    }, this);
}
;
}),
"[project]/components/ui/scroll-area.tsx [app-rsc] (client reference proxy) <module evaluation>", ((__turbopack_context__) => {
"use strict";

// This file is generated by next-core EcmascriptClientReferenceModule.
__turbopack_context__.s([
    "ScrollArea",
    ()=>ScrollArea,
    "ScrollBar",
    ()=>ScrollBar
]);
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$server$2d$dom$2d$turbopack$2d$server$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/next/dist/server/route-modules/app-page/vendored/rsc/react-server-dom-turbopack-server.js [app-rsc] (ecmascript)");
;
const ScrollArea = (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$server$2d$dom$2d$turbopack$2d$server$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["registerClientReference"])(function() {
    throw new Error("Attempted to call ScrollArea() from the server but ScrollArea is on the client. It's not possible to invoke a client function from the server, it can only be rendered as a Component or passed to props of a Client Component.");
}, "[project]/components/ui/scroll-area.tsx <module evaluation>", "ScrollArea");
const ScrollBar = (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$server$2d$dom$2d$turbopack$2d$server$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["registerClientReference"])(function() {
    throw new Error("Attempted to call ScrollBar() from the server but ScrollBar is on the client. It's not possible to invoke a client function from the server, it can only be rendered as a Component or passed to props of a Client Component.");
}, "[project]/components/ui/scroll-area.tsx <module evaluation>", "ScrollBar");
}),
"[project]/components/ui/scroll-area.tsx [app-rsc] (client reference proxy)", ((__turbopack_context__) => {
"use strict";

// This file is generated by next-core EcmascriptClientReferenceModule.
__turbopack_context__.s([
    "ScrollArea",
    ()=>ScrollArea,
    "ScrollBar",
    ()=>ScrollBar
]);
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$server$2d$dom$2d$turbopack$2d$server$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/next/dist/server/route-modules/app-page/vendored/rsc/react-server-dom-turbopack-server.js [app-rsc] (ecmascript)");
;
const ScrollArea = (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$server$2d$dom$2d$turbopack$2d$server$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["registerClientReference"])(function() {
    throw new Error("Attempted to call ScrollArea() from the server but ScrollArea is on the client. It's not possible to invoke a client function from the server, it can only be rendered as a Component or passed to props of a Client Component.");
}, "[project]/components/ui/scroll-area.tsx", "ScrollArea");
const ScrollBar = (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$server$2d$dom$2d$turbopack$2d$server$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["registerClientReference"])(function() {
    throw new Error("Attempted to call ScrollBar() from the server but ScrollBar is on the client. It's not possible to invoke a client function from the server, it can only be rendered as a Component or passed to props of a Client Component.");
}, "[project]/components/ui/scroll-area.tsx", "ScrollBar");
}),
"[project]/components/ui/scroll-area.tsx [app-rsc] (ecmascript)", ((__turbopack_context__) => {
"use strict";

var __TURBOPACK__imported__module__$5b$project$5d2f$components$2f$ui$2f$scroll$2d$area$2e$tsx__$5b$app$2d$rsc$5d$__$28$client__reference__proxy$29$__$3c$module__evaluation$3e$__ = __turbopack_context__.i("[project]/components/ui/scroll-area.tsx [app-rsc] (client reference proxy) <module evaluation>");
var __TURBOPACK__imported__module__$5b$project$5d2f$components$2f$ui$2f$scroll$2d$area$2e$tsx__$5b$app$2d$rsc$5d$__$28$client__reference__proxy$29$__ = __turbopack_context__.i("[project]/components/ui/scroll-area.tsx [app-rsc] (client reference proxy)");
;
__turbopack_context__.n(__TURBOPACK__imported__module__$5b$project$5d2f$components$2f$ui$2f$scroll$2d$area$2e$tsx__$5b$app$2d$rsc$5d$__$28$client__reference__proxy$29$__);
}),
"[project]/components/docs/sidebar.tsx [app-rsc] (ecmascript)", ((__turbopack_context__) => {
"use strict";

__turbopack_context__.s([
    "DocsSidebar",
    ()=>DocsSidebar
]);
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/next/dist/server/route-modules/app-page/vendored/rsc/react-jsx-dev-runtime.js [app-rsc] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$client$2f$app$2d$dir$2f$link$2e$react$2d$server$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/next/dist/client/app-dir/link.react-server.js [app-rsc] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$components$2f$ui$2f$button$2e$tsx__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/components/ui/button.tsx [app-rsc] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$components$2f$ui$2f$scroll$2d$area$2e$tsx__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/components/ui/scroll-area.tsx [app-rsc] (ecmascript)");
;
;
;
;
const sidebarItems = [
    {
        title: '前言',
        items: [
            {
                title: '發行說明',
                href: '/docs/releases'
            }
        ]
    },
    {
        title: '入門',
        items: [
            {
                title: '安裝',
                href: '/docs/installation'
            },
            {
                title: '配置',
                href: '/docs/configuration'
            },
            {
                title: '目錄結構',
                href: '/docs/structure'
            },
            {
                title: '生命週期',
                href: '/docs/lifecycle'
            }
        ]
    },
    {
        title: '架構',
        items: [
            {
                title: 'Service Container',
                href: '/docs/container'
            },
            {
                title: 'Service Providers',
                href: '/docs/providers'
            },
            {
                title: 'Facades',
                href: '/docs/facades'
            }
        ]
    },
    {
        title: '基礎功能',
        items: [
            {
                title: '路由',
                href: '/docs/routing'
            },
            {
                title: '中介軟體',
                href: '/docs/middleware'
            },
            {
                title: 'CSRF 保護',
                href: '/docs/csrf'
            },
            {
                title: '控制器',
                href: '/docs/controllers'
            },
            {
                title: '請求',
                href: '/docs/requests'
            },
            {
                title: '回應',
                href: '/docs/responses'
            },
            {
                title: '視圖',
                href: '/docs/views'
            },
            {
                title: 'Blade 樣板',
                href: '/docs/blade'
            }
        ]
    },
    {
        title: '資料庫',
        items: [
            {
                title: '資料庫基礎',
                href: '/docs/database'
            },
            {
                title: 'Query Builder',
                href: '/docs/queries'
            },
            {
                title: '分頁',
                href: '/docs/pagination'
            },
            {
                title: '遷移',
                href: '/docs/migrations'
            },
            {
                title: 'Seeding',
                href: '/docs/seeding'
            },
            {
                title: 'Redis',
                href: '/docs/redis'
            },
            {
                title: 'Eloquent ORM',
                href: '/docs/eloquent'
            },
            {
                title: 'Eloquent 關聯',
                href: '/docs/eloquent-relationships'
            },
            {
                title: 'Eloquent 集合',
                href: '/docs/eloquent-collections'
            },
            {
                title: 'Eloquent Factories',
                href: '/docs/eloquent-factories'
            },
            {
                title: 'Eloquent Mutators',
                href: '/docs/eloquent-mutators'
            },
            {
                title: 'Eloquent Resources',
                href: '/docs/eloquent-resources'
            },
            {
                title: 'Eloquent Serialization',
                href: '/docs/eloquent-serialization'
            }
        ]
    },
    {
        title: '安全性',
        items: [
            {
                title: '驗證',
                href: '/docs/authentication'
            },
            {
                title: '授權',
                href: '/docs/authorization'
            },
            {
                title: '加密',
                href: '/docs/encryption'
            },
            {
                title: '雜湊',
                href: '/docs/hashing'
            }
        ]
    },
    {
        title: '測試',
        items: [
            {
                title: '測試概論',
                href: '/docs/testing'
            },
            {
                title: 'HTTP 測試',
                href: '/docs/http-tests'
            },
            {
                title: 'Console 測試',
                href: '/docs/console-tests'
            },
            {
                title: '資料庫測試',
                href: '/docs/database-testing'
            },
            {
                title: 'Dusk',
                href: '/docs/dusk'
            }
        ]
    },
    {
        title: '其他',
        items: [
            {
                title: 'Artisan Console',
                href: '/docs/artisan'
            },
            {
                title: '廣播',
                href: '/docs/broadcasting'
            },
            {
                title: '快取',
                href: '/docs/cache'
            },
            {
                title: '集合',
                href: '/docs/collections'
            },
            {
                title: '事件',
                href: '/docs/events'
            },
            {
                title: '檔案儲存',
                href: '/docs/filesystem'
            },
            {
                title: '輔助函式',
                href: '/docs/helpers'
            },
            {
                title: '郵件',
                href: '/docs/mail'
            },
            {
                title: '通知',
                href: '/docs/notifications'
            },
            {
                title: '佇列',
                href: '/docs/queues'
            },
            {
                title: '排程',
                href: '/docs/scheduling'
            }
        ]
    },
    {
        title: '官方套件',
        items: [
            {
                title: 'Billing',
                href: '/docs/billing'
            },
            {
                title: 'Cashier (Paddle)',
                href: '/docs/cashier-paddle'
            },
            {
                title: 'Envoy',
                href: '/docs/envoy'
            },
            {
                title: 'Errors',
                href: '/docs/errors'
            },
            {
                title: 'Folio',
                href: '/docs/folio'
            },
            {
                title: 'Fortify',
                href: '/docs/fortify'
            },
            {
                title: 'Frontend',
                href: '/docs/frontend'
            },
            {
                title: 'Homestead',
                href: '/docs/homestead'
            },
            {
                title: 'Horizon',
                href: '/docs/horizon'
            },
            {
                title: 'HTTP Client',
                href: '/docs/http-client'
            },
            {
                title: 'License',
                href: '/docs/license'
            },
            {
                title: 'Localization',
                href: '/docs/localization'
            },
            {
                title: 'Logging',
                href: '/docs/logging'
            },
            {
                title: 'MCP',
                href: '/docs/mcp'
            },
            {
                title: 'Mix',
                href: '/docs/mix'
            },
            {
                title: 'Mocking',
                href: '/docs/mocking'
            },
            {
                title: 'MongoDB',
                href: '/docs/mongodb'
            },
            {
                title: 'Octane',
                href: '/docs/octane'
            },
            {
                title: 'Packages',
                href: '/docs/packages'
            },
            {
                title: 'Passport',
                href: '/docs/passport'
            },
            {
                title: 'Passwords',
                href: '/docs/passwords'
            },
            {
                title: 'Pennant',
                href: '/docs/pennant'
            },
            {
                title: 'Pint',
                href: '/docs/pint'
            },
            {
                title: 'Precognition',
                href: '/docs/precognition'
            },
            {
                title: 'Processes',
                href: '/docs/processes'
            },
            {
                title: 'Prompts',
                href: '/docs/prompts'
            },
            {
                title: 'Pulse',
                href: '/docs/pulse'
            },
            {
                title: 'Rate Limiting',
                href: '/docs/rate-limiting'
            },
            {
                title: 'Readme',
                href: '/docs/readme'
            },
            {
                title: 'Redirects',
                href: '/docs/redirects'
            },
            {
                title: 'Reverb',
                href: '/docs/reverb'
            },
            {
                title: 'Sail',
                href: '/docs/sail'
            },
            {
                title: 'Sanctum',
                href: '/docs/sanctum'
            },
            {
                title: 'Scout',
                href: '/docs/scout'
            },
            {
                title: 'Socialite',
                href: '/docs/socialite'
            },
            {
                title: 'Starter Kits',
                href: '/docs/starter-kits'
            },
            {
                title: 'Strings',
                href: '/docs/strings'
            },
            {
                title: 'Telescope',
                href: '/docs/telescope'
            },
            {
                title: 'Upgrade',
                href: '/docs/upgrade'
            },
            {
                title: 'URLs',
                href: '/docs/urls'
            },
            {
                title: 'Valet',
                href: '/docs/valet'
            },
            {
                title: 'Validation',
                href: '/docs/validation'
            },
            {
                title: 'Verification',
                href: '/docs/verification'
            },
            {
                title: 'Vite',
                href: '/docs/vite'
            },
            {
                title: 'Context',
                href: '/docs/context'
            },
            {
                title: 'Contracts',
                href: '/docs/contracts'
            },
            {
                title: 'Contributions',
                href: '/docs/contributions'
            },
            {
                title: 'Deployment',
                href: '/docs/deployment'
            },
            {
                title: 'Documentation',
                href: '/docs/documentation'
            },
            {
                title: 'Concurrency',
                href: '/docs/concurrency'
            }
        ]
    }
];
function DocsSidebar() {
    return /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["jsxDEV"])("div", {
        className: "w-64 border-r bg-background h-screen sticky top-0 hidden md:block",
        children: [
            /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["jsxDEV"])("div", {
                className: "p-6 font-bold text-xl border-b flex items-center gap-2",
                children: [
                    /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["jsxDEV"])("span", {
                        className: "text-red-600",
                        children: "Laravel"
                    }, void 0, false, {
                        fileName: "[project]/components/docs/sidebar.tsx",
                        lineNumber: 156,
                        columnNumber: 17
                    }, this),
                    " Docs CN"
                ]
            }, void 0, true, {
                fileName: "[project]/components/docs/sidebar.tsx",
                lineNumber: 155,
                columnNumber: 13
            }, this),
            /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$components$2f$ui$2f$scroll$2d$area$2e$tsx__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["ScrollArea"], {
                className: "h-[calc(100vh-65px)]",
                children: /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["jsxDEV"])("div", {
                    className: "p-4 space-y-6",
                    children: sidebarItems.map((section)=>/*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["jsxDEV"])("div", {
                            children: [
                                /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["jsxDEV"])("h4", {
                                    className: "mb-2 px-4 text-sm font-semibold text-muted-foreground",
                                    children: section.title
                                }, void 0, false, {
                                    fileName: "[project]/components/docs/sidebar.tsx",
                                    lineNumber: 162,
                                    columnNumber: 29
                                }, this),
                                /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["jsxDEV"])("div", {
                                    className: "space-y-1",
                                    children: section.items.map((item)=>/*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$client$2f$app$2d$dir$2f$link$2e$react$2d$server$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["default"], {
                                            href: item.href,
                                            className: "block",
                                            children: /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$components$2f$ui$2f$button$2e$tsx__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["Button"], {
                                                variant: "ghost",
                                                size: "sm",
                                                className: "w-full justify-start font-normal",
                                                children: item.title
                                            }, void 0, false, {
                                                fileName: "[project]/components/docs/sidebar.tsx",
                                                lineNumber: 166,
                                                columnNumber: 41
                                            }, this)
                                        }, item.href, false, {
                                            fileName: "[project]/components/docs/sidebar.tsx",
                                            lineNumber: 165,
                                            columnNumber: 37
                                        }, this))
                                }, void 0, false, {
                                    fileName: "[project]/components/docs/sidebar.tsx",
                                    lineNumber: 163,
                                    columnNumber: 29
                                }, this)
                            ]
                        }, section.title, true, {
                            fileName: "[project]/components/docs/sidebar.tsx",
                            lineNumber: 161,
                            columnNumber: 25
                        }, this))
                }, void 0, false, {
                    fileName: "[project]/components/docs/sidebar.tsx",
                    lineNumber: 159,
                    columnNumber: 17
                }, this)
            }, void 0, false, {
                fileName: "[project]/components/docs/sidebar.tsx",
                lineNumber: 158,
                columnNumber: 13
            }, this)
        ]
    }, void 0, true, {
        fileName: "[project]/components/docs/sidebar.tsx",
        lineNumber: 154,
        columnNumber: 9
    }, this);
}
}),
"[project]/app/docs/layout.tsx [app-rsc] (ecmascript)", ((__turbopack_context__) => {
"use strict";

__turbopack_context__.s([
    "default",
    ()=>DocsLayout
]);
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/next/dist/server/route-modules/app-page/vendored/rsc/react-jsx-dev-runtime.js [app-rsc] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$components$2f$docs$2f$sidebar$2e$tsx__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/components/docs/sidebar.tsx [app-rsc] (ecmascript)");
;
;
function DocsLayout({ children }) {
    return /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["jsxDEV"])("div", {
        className: "flex min-h-screen bg-background",
        children: [
            /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$components$2f$docs$2f$sidebar$2e$tsx__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["DocsSidebar"], {}, void 0, false, {
                fileName: "[project]/app/docs/layout.tsx",
                lineNumber: 6,
                columnNumber: 13
            }, this),
            /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$server$2f$route$2d$modules$2f$app$2d$page$2f$vendored$2f$rsc$2f$react$2d$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$rsc$5d$__$28$ecmascript$29$__["jsxDEV"])("main", {
                className: "flex-1 relative",
                children: children
            }, void 0, false, {
                fileName: "[project]/app/docs/layout.tsx",
                lineNumber: 7,
                columnNumber: 13
            }, this)
        ]
    }, void 0, true, {
        fileName: "[project]/app/docs/layout.tsx",
        lineNumber: 5,
        columnNumber: 9
    }, this);
}
}),
];

//# sourceMappingURL=_d88cf467._.js.map