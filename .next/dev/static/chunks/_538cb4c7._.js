(globalThis.TURBOPACK || (globalThis.TURBOPACK = [])).push([typeof document === "object" ? document.currentScript : undefined,
"[project]/lib/utils.ts [app-client] (ecmascript)", ((__turbopack_context__) => {
"use strict";

__turbopack_context__.s([
    "cn",
    ()=>cn
]);
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$clsx$2f$dist$2f$clsx$2e$mjs__$5b$app$2d$client$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/clsx/dist/clsx.mjs [app-client] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$tailwind$2d$merge$2f$dist$2f$bundle$2d$mjs$2e$mjs__$5b$app$2d$client$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/tailwind-merge/dist/bundle-mjs.mjs [app-client] (ecmascript)");
;
;
function cn(...inputs) {
    return (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$tailwind$2d$merge$2f$dist$2f$bundle$2d$mjs$2e$mjs__$5b$app$2d$client$5d$__$28$ecmascript$29$__["twMerge"])((0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$clsx$2f$dist$2f$clsx$2e$mjs__$5b$app$2d$client$5d$__$28$ecmascript$29$__["clsx"])(inputs));
}
if (typeof globalThis.$RefreshHelpers$ === 'object' && globalThis.$RefreshHelpers !== null) {
    __turbopack_context__.k.registerExports(__turbopack_context__.m, globalThis.$RefreshHelpers$);
}
}),
"[project]/components/ui/button.tsx [app-client] (ecmascript)", ((__turbopack_context__) => {
"use strict";

__turbopack_context__.s([
    "Button",
    ()=>Button,
    "buttonVariants",
    ()=>buttonVariants
]);
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/next/dist/compiled/react/jsx-dev-runtime.js [app-client] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f40$radix$2d$ui$2f$react$2d$slot$2f$dist$2f$index$2e$mjs__$5b$app$2d$client$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/@radix-ui/react-slot/dist/index.mjs [app-client] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$class$2d$variance$2d$authority$2f$dist$2f$index$2e$mjs__$5b$app$2d$client$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/class-variance-authority/dist/index.mjs [app-client] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$lib$2f$utils$2e$ts__$5b$app$2d$client$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/lib/utils.ts [app-client] (ecmascript)");
;
;
;
;
const buttonVariants = (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$class$2d$variance$2d$authority$2f$dist$2f$index$2e$mjs__$5b$app$2d$client$5d$__$28$ecmascript$29$__["cva"])("inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium transition-all disabled:pointer-events-none disabled:opacity-50 [&_svg]:pointer-events-none [&_svg:not([class*='size-'])]:size-4 shrink-0 [&_svg]:shrink-0 outline-none focus-visible:border-ring focus-visible:ring-ring/50 focus-visible:ring-[3px] aria-invalid:ring-destructive/20 dark:aria-invalid:ring-destructive/40 aria-invalid:border-destructive", {
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
    const Comp = asChild ? __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f40$radix$2d$ui$2f$react$2d$slot$2f$dist$2f$index$2e$mjs__$5b$app$2d$client$5d$__$28$ecmascript$29$__["Slot"] : "button";
    return /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])(Comp, {
        "data-slot": "button",
        className: (0, __TURBOPACK__imported__module__$5b$project$5d2f$lib$2f$utils$2e$ts__$5b$app$2d$client$5d$__$28$ecmascript$29$__["cn"])(buttonVariants({
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
_c = Button;
;
var _c;
__turbopack_context__.k.register(_c, "Button");
if (typeof globalThis.$RefreshHelpers$ === 'object' && globalThis.$RefreshHelpers !== null) {
    __turbopack_context__.k.registerExports(__turbopack_context__.m, globalThis.$RefreshHelpers$);
}
}),
"[project]/components/ui/scroll-area.tsx [app-client] (ecmascript)", ((__turbopack_context__) => {
"use strict";

__turbopack_context__.s([
    "ScrollArea",
    ()=>ScrollArea,
    "ScrollBar",
    ()=>ScrollBar
]);
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/next/dist/compiled/react/jsx-dev-runtime.js [app-client] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f40$radix$2d$ui$2f$react$2d$scroll$2d$area$2f$dist$2f$index$2e$mjs__$5b$app$2d$client$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/@radix-ui/react-scroll-area/dist/index.mjs [app-client] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$lib$2f$utils$2e$ts__$5b$app$2d$client$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/lib/utils.ts [app-client] (ecmascript)");
"use client";
;
;
;
function ScrollArea({ className, children, ...props }) {
    return /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f40$radix$2d$ui$2f$react$2d$scroll$2d$area$2f$dist$2f$index$2e$mjs__$5b$app$2d$client$5d$__$28$ecmascript$29$__["Root"], {
        "data-slot": "scroll-area",
        className: (0, __TURBOPACK__imported__module__$5b$project$5d2f$lib$2f$utils$2e$ts__$5b$app$2d$client$5d$__$28$ecmascript$29$__["cn"])("relative", className),
        ...props,
        children: [
            /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f40$radix$2d$ui$2f$react$2d$scroll$2d$area$2f$dist$2f$index$2e$mjs__$5b$app$2d$client$5d$__$28$ecmascript$29$__["Viewport"], {
                "data-slot": "scroll-area-viewport",
                className: "focus-visible:ring-ring/50 size-full rounded-[inherit] transition-[color,box-shadow] outline-none focus-visible:ring-[3px] focus-visible:outline-1",
                children: children
            }, void 0, false, {
                fileName: "[project]/components/ui/scroll-area.tsx",
                lineNumber: 19,
                columnNumber: 7
            }, this),
            /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])(ScrollBar, {}, void 0, false, {
                fileName: "[project]/components/ui/scroll-area.tsx",
                lineNumber: 25,
                columnNumber: 7
            }, this),
            /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f40$radix$2d$ui$2f$react$2d$scroll$2d$area$2f$dist$2f$index$2e$mjs__$5b$app$2d$client$5d$__$28$ecmascript$29$__["Corner"], {}, void 0, false, {
                fileName: "[project]/components/ui/scroll-area.tsx",
                lineNumber: 26,
                columnNumber: 7
            }, this)
        ]
    }, void 0, true, {
        fileName: "[project]/components/ui/scroll-area.tsx",
        lineNumber: 14,
        columnNumber: 5
    }, this);
}
_c = ScrollArea;
function ScrollBar({ className, orientation = "vertical", ...props }) {
    return /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f40$radix$2d$ui$2f$react$2d$scroll$2d$area$2f$dist$2f$index$2e$mjs__$5b$app$2d$client$5d$__$28$ecmascript$29$__["ScrollAreaScrollbar"], {
        "data-slot": "scroll-area-scrollbar",
        orientation: orientation,
        className: (0, __TURBOPACK__imported__module__$5b$project$5d2f$lib$2f$utils$2e$ts__$5b$app$2d$client$5d$__$28$ecmascript$29$__["cn"])("flex touch-none p-px transition-colors select-none", orientation === "vertical" && "h-full w-2.5 border-l border-l-transparent", orientation === "horizontal" && "h-2.5 flex-col border-t border-t-transparent", className),
        ...props,
        children: /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f40$radix$2d$ui$2f$react$2d$scroll$2d$area$2f$dist$2f$index$2e$mjs__$5b$app$2d$client$5d$__$28$ecmascript$29$__["ScrollAreaThumb"], {
            "data-slot": "scroll-area-thumb",
            className: "bg-border relative flex-1 rounded-full"
        }, void 0, false, {
            fileName: "[project]/components/ui/scroll-area.tsx",
            lineNumber: 50,
            columnNumber: 7
        }, this)
    }, void 0, false, {
        fileName: "[project]/components/ui/scroll-area.tsx",
        lineNumber: 37,
        columnNumber: 5
    }, this);
}
_c1 = ScrollBar;
;
var _c, _c1;
__turbopack_context__.k.register(_c, "ScrollArea");
__turbopack_context__.k.register(_c1, "ScrollBar");
if (typeof globalThis.$RefreshHelpers$ === 'object' && globalThis.$RefreshHelpers !== null) {
    __turbopack_context__.k.registerExports(__turbopack_context__.m, globalThis.$RefreshHelpers$);
}
}),
"[project]/components/docs/sidebar.tsx [app-client] (ecmascript)", ((__turbopack_context__) => {
"use strict";

__turbopack_context__.s([
    "DocsSidebar",
    ()=>DocsSidebar
]);
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/next/dist/compiled/react/jsx-dev-runtime.js [app-client] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$client$2f$app$2d$dir$2f$link$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/next/dist/client/app-dir/link.js [app-client] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$index$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/node_modules/next/dist/compiled/react/index.js [app-client] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$components$2f$ui$2f$button$2e$tsx__$5b$app$2d$client$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/components/ui/button.tsx [app-client] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$components$2f$ui$2f$scroll$2d$area$2e$tsx__$5b$app$2d$client$5d$__$28$ecmascript$29$__ = __turbopack_context__.i("[project]/components/ui/scroll-area.tsx [app-client] (ecmascript)");
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$lucide$2d$react$2f$dist$2f$esm$2f$icons$2f$chevron$2d$down$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__$3c$export__default__as__ChevronDown$3e$__ = __turbopack_context__.i("[project]/node_modules/lucide-react/dist/esm/icons/chevron-down.js [app-client] (ecmascript) <export default as ChevronDown>");
var __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$lucide$2d$react$2f$dist$2f$esm$2f$icons$2f$chevron$2d$right$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__$3c$export__default__as__ChevronRight$3e$__ = __turbopack_context__.i("[project]/node_modules/lucide-react/dist/esm/icons/chevron-right.js [app-client] (ecmascript) <export default as ChevronRight>");
;
var _s = __turbopack_context__.k.signature();
'use client';
;
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
            },
            {
                title: '前端',
                href: '/docs/frontend'
            },
            {
                title: '啟動套件',
                href: '/docs/starter-kits'
            },
            {
                title: '部署',
                href: '/docs/deployment'
            }
        ]
    },
    {
        title: '架構',
        items: [
            {
                title: '請求生命週期',
                href: '/docs/lifecycle'
            },
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
            },
            {
                title: '資產打包',
                href: '/docs/vite'
            },
            {
                title: 'URL 產生',
                href: '/docs/urls'
            },
            {
                title: 'Session',
                href: '/docs/session'
            },
            {
                title: '驗證',
                href: '/docs/validation'
            },
            {
                title: '錯誤處理',
                href: '/docs/errors'
            },
            {
                title: '日誌',
                href: '/docs/logging'
            }
        ]
    },
    {
        title: '深入探討',
        items: [
            {
                title: 'Artisan 命令列',
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
                title: '並行',
                href: '/docs/concurrency'
            },
            {
                title: 'Context',
                href: '/docs/context'
            },
            {
                title: '契約',
                href: '/docs/contracts'
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
                title: 'HTTP 客戶端',
                href: '/docs/http-client'
            },
            {
                title: '本地化',
                href: '/docs/localization'
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
                title: '套件',
                href: '/docs/packages'
            },
            {
                title: '程序',
                href: '/docs/processes'
            },
            {
                title: '佇列',
                href: '/docs/queues'
            },
            {
                title: '速率限制',
                href: '/docs/rate-limiting'
            },
            {
                title: '字串',
                href: '/docs/strings'
            },
            {
                title: '任務排程',
                href: '/docs/scheduling'
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
            }
        ]
    },
    {
        title: 'Eloquent ORM',
        items: [
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
                title: 'Cashier Paddle',
                href: '/docs/cashier-paddle'
            },
            {
                title: 'Envoy',
                href: '/docs/envoy'
            },
            {
                title: '錯誤處理',
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
                title: 'Homestead',
                href: '/docs/homestead'
            },
            {
                title: 'Horizon',
                href: '/docs/horizon'
            },
            {
                title: 'HTTP 客戶端',
                href: '/docs/http-client'
            },
            {
                title: '授權條款',
                href: '/docs/license'
            },
            {
                title: '本地化',
                href: '/docs/localization'
            },
            {
                title: '日誌',
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
                title: '套件',
                href: '/docs/packages'
            },
            {
                title: 'Passport',
                href: '/docs/passport'
            },
            {
                title: '重設密碼',
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
                title: '程序',
                href: '/docs/processes'
            },
            {
                title: '提示',
                href: '/docs/prompts'
            },
            {
                title: 'Pulse',
                href: '/docs/pulse'
            },
            {
                title: '速率限制',
                href: '/docs/rate-limiting'
            },
            {
                title: '說明文件',
                href: '/docs/readme'
            },
            {
                title: 'HTTP 重新導向',
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
                title: '字串',
                href: '/docs/strings'
            },
            {
                title: 'Telescope',
                href: '/docs/telescope'
            },
            {
                title: '升級指南',
                href: '/docs/upgrade'
            },
            {
                title: 'URL 產生',
                href: '/docs/urls'
            },
            {
                title: 'Valet',
                href: '/docs/valet'
            },
            {
                title: '驗證',
                href: '/docs/validation'
            },
            {
                title: '電子郵件驗證',
                href: '/docs/verification'
            },
            {
                title: '資源打包',
                href: '/docs/vite'
            },
            {
                title: 'Context',
                href: '/docs/context'
            },
            {
                title: '契約',
                href: '/docs/contracts'
            },
            {
                title: '貢獻指南',
                href: '/docs/contributions'
            },
            {
                title: '文件',
                href: '/docs/documentation'
            },
            {
                title: '並行',
                href: '/docs/concurrency'
            }
        ]
    }
];
function DocsSidebar() {
    _s();
    const [expandedSections, setExpandedSections] = (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$index$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["useState"])(new Set([
        '前言',
        '入門'
    ]));
    const toggleSection = (sectionTitle)=>{
        const newExpanded = new Set(expandedSections);
        if (newExpanded.has(sectionTitle)) {
            // 如果當前section已經展開，則收起它
            newExpanded.delete(sectionTitle);
        } else {
            // 否則，收起所有section，然後展開點擊的section
            newExpanded.clear();
            newExpanded.add(sectionTitle);
        }
        setExpandedSections(newExpanded);
    };
    return /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])("div", {
        className: "w-64 border-r bg-background h-screen sticky top-0 hidden md:block",
        children: [
            /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])("div", {
                className: "p-6 font-bold text-xl border-b flex items-center gap-2",
                children: [
                    /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])("span", {
                        className: "text-red-600",
                        children: "Laravel"
                    }, void 0, false, {
                        fileName: "[project]/components/docs/sidebar.tsx",
                        lineNumber: 213,
                        columnNumber: 17
                    }, this),
                    " Docs（中文）"
                ]
            }, void 0, true, {
                fileName: "[project]/components/docs/sidebar.tsx",
                lineNumber: 212,
                columnNumber: 13
            }, this),
            /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$components$2f$ui$2f$scroll$2d$area$2e$tsx__$5b$app$2d$client$5d$__$28$ecmascript$29$__["ScrollArea"], {
                className: "h-[calc(100vh-65px)]",
                children: /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])("div", {
                    className: "p-4 space-y-2",
                    children: [
                        sidebarItems.map((section)=>/*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])("div", {
                                children: [
                                    /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])("button", {
                                        onClick: ()=>toggleSection(section.title),
                                        className: "w-full flex items-center justify-between px-4 py-2 text-sm font-semibold text-muted-foreground hover:text-foreground hover:bg-accent rounded-md transition-colors",
                                        children: [
                                            /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])("span", {
                                                children: section.title
                                            }, void 0, false, {
                                                fileName: "[project]/components/docs/sidebar.tsx",
                                                lineNumber: 223,
                                                columnNumber: 33
                                            }, this),
                                            expandedSections.has(section.title) ? /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$lucide$2d$react$2f$dist$2f$esm$2f$icons$2f$chevron$2d$down$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__$3c$export__default__as__ChevronDown$3e$__["ChevronDown"], {
                                                className: "h-4 w-4"
                                            }, void 0, false, {
                                                fileName: "[project]/components/docs/sidebar.tsx",
                                                lineNumber: 225,
                                                columnNumber: 37
                                            }, this) : /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$lucide$2d$react$2f$dist$2f$esm$2f$icons$2f$chevron$2d$right$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__$3c$export__default__as__ChevronRight$3e$__["ChevronRight"], {
                                                className: "h-4 w-4"
                                            }, void 0, false, {
                                                fileName: "[project]/components/docs/sidebar.tsx",
                                                lineNumber: 227,
                                                columnNumber: 37
                                            }, this)
                                        ]
                                    }, void 0, true, {
                                        fileName: "[project]/components/docs/sidebar.tsx",
                                        lineNumber: 219,
                                        columnNumber: 29
                                    }, this),
                                    expandedSections.has(section.title) && /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])("div", {
                                        className: "ml-4 mt-1 space-y-1",
                                        children: section.items.map((item)=>/*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$client$2f$app$2d$dir$2f$link$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["default"], {
                                                href: item.href,
                                                className: "block",
                                                children: /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$components$2f$ui$2f$button$2e$tsx__$5b$app$2d$client$5d$__$28$ecmascript$29$__["Button"], {
                                                    variant: "ghost",
                                                    size: "sm",
                                                    className: "w-full justify-start font-normal text-sm",
                                                    children: item.title
                                                }, void 0, false, {
                                                    fileName: "[project]/components/docs/sidebar.tsx",
                                                    lineNumber: 234,
                                                    columnNumber: 45
                                                }, this)
                                            }, item.href, false, {
                                                fileName: "[project]/components/docs/sidebar.tsx",
                                                lineNumber: 233,
                                                columnNumber: 41
                                            }, this))
                                    }, void 0, false, {
                                        fileName: "[project]/components/docs/sidebar.tsx",
                                        lineNumber: 231,
                                        columnNumber: 33
                                    }, this)
                                ]
                            }, section.title, true, {
                                fileName: "[project]/components/docs/sidebar.tsx",
                                lineNumber: 218,
                                columnNumber: 25
                            }, this)),
                        /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])("div", {
                            className: "border-t pt-4 space-y-2",
                            children: [
                                /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$client$2f$app$2d$dir$2f$link$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["default"], {
                                    href: "/docs/api",
                                    className: "block",
                                    children: /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$components$2f$ui$2f$button$2e$tsx__$5b$app$2d$client$5d$__$28$ecmascript$29$__["Button"], {
                                        variant: "ghost",
                                        size: "sm",
                                        className: "w-full justify-start font-normal text-sm",
                                        children: "API 文件"
                                    }, void 0, false, {
                                        fileName: "[project]/components/docs/sidebar.tsx",
                                        lineNumber: 245,
                                        columnNumber: 29
                                    }, this)
                                }, void 0, false, {
                                    fileName: "[project]/components/docs/sidebar.tsx",
                                    lineNumber: 244,
                                    columnNumber: 25
                                }, this),
                                /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$client$2f$app$2d$dir$2f$link$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["default"], {
                                    href: "/docs/releases",
                                    className: "block",
                                    children: /*#__PURE__*/ (0, __TURBOPACK__imported__module__$5b$project$5d2f$node_modules$2f$next$2f$dist$2f$compiled$2f$react$2f$jsx$2d$dev$2d$runtime$2e$js__$5b$app$2d$client$5d$__$28$ecmascript$29$__["jsxDEV"])(__TURBOPACK__imported__module__$5b$project$5d2f$components$2f$ui$2f$button$2e$tsx__$5b$app$2d$client$5d$__$28$ecmascript$29$__["Button"], {
                                        variant: "ghost",
                                        size: "sm",
                                        className: "w-full justify-start font-normal text-sm",
                                        children: "更新日誌"
                                    }, void 0, false, {
                                        fileName: "[project]/components/docs/sidebar.tsx",
                                        lineNumber: 250,
                                        columnNumber: 29
                                    }, this)
                                }, void 0, false, {
                                    fileName: "[project]/components/docs/sidebar.tsx",
                                    lineNumber: 249,
                                    columnNumber: 25
                                }, this)
                            ]
                        }, void 0, true, {
                            fileName: "[project]/components/docs/sidebar.tsx",
                            lineNumber: 243,
                            columnNumber: 21
                        }, this)
                    ]
                }, void 0, true, {
                    fileName: "[project]/components/docs/sidebar.tsx",
                    lineNumber: 216,
                    columnNumber: 17
                }, this)
            }, void 0, false, {
                fileName: "[project]/components/docs/sidebar.tsx",
                lineNumber: 215,
                columnNumber: 13
            }, this)
        ]
    }, void 0, true, {
        fileName: "[project]/components/docs/sidebar.tsx",
        lineNumber: 211,
        columnNumber: 9
    }, this);
}
_s(DocsSidebar, "i/DPK2WK579e74UTACOTbYl+aaA=");
_c = DocsSidebar;
var _c;
__turbopack_context__.k.register(_c, "DocsSidebar");
if (typeof globalThis.$RefreshHelpers$ === 'object' && globalThis.$RefreshHelpers !== null) {
    __turbopack_context__.k.registerExports(__turbopack_context__.m, globalThis.$RefreshHelpers$);
}
}),
]);

//# sourceMappingURL=_538cb4c7._.js.map