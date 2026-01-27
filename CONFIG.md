# 配置文檔

## 專案配置

### package.json 配置

```json
{
  "name": "laravel-docs-cn",
  "version": "0.1.0",
  "private": true,
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "postbuild": "npx pagefind --site out --output-path public/pagefind",
    "start": "next start",
    "lint": "eslint"
  }
}
```

#### 腳本說明

- **dev**: 啟動開發伺服器，支援熱重載
- **build**: 生產環境建置，生成靜態檔案
- **postbuild**: 建置後自動生成 Pagefind 搜尋索引
- **start**: 啟動生產環境伺服器
- **lint**: 執行 ESLint 程式碼檢查

### Next.js 配置 (next.config.ts)

```typescript
import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  output: 'export',          // 靜態網站輸出
  trailingSlash: true,       // URL 結尾添加斜槓
  images: {
    unoptimized: true        // 停用圖片優化（靜態輸出需要）
  }
};

export default nextConfig;
```

#### 配置選項說明

| 選項 | 值 | 說明 |
|------|----|------|
| `output` | `'export'` | 生成靜態 HTML 檔案 |
| `trailingSlash` | `true` | URL 路徑結尾添加 `/` |
| `images.unoptimized` | `true` | 靜態輸出模式下的圖片處理 |

### TypeScript 配置 (tsconfig.json)

```json
{
  "compilerOptions": {
    "lib": ["dom", "dom.iterable", "es6"],
    "allowJs": true,
    "skipLibCheck": true,
    "strict": true,
    "noEmit": true,
    "esModuleInterop": true,
    "module": "esnext",
    "moduleResolution": "bundler",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "jsx": "preserve",
    "incremental": true,
    "plugins": [
      {
        "name": "next"
      }
    ],
    "baseUrl": ".",
    "paths": {
      "@/*": ["./*"]
    }
  },
  "include": ["next-env.d.ts", "**/*.ts", "**/*.tsx", ".next/types/**/*.ts"],
  "exclude": ["node_modules"]
}
```

### Tailwind CSS 配置

#### tailwind.config.ts

```typescript
import type { Config } from "tailwindcss";

const config: Config = {
  darkMode: ["class"],        // 基於 class 的深色模式
  content: [
    "./pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./components/**/*.{js,ts,jsx,tsx,mdx}",
    "./app/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    container: {
      center: true,
      padding: "2rem",
      screens: {
        "2xl": "1400px",
      },
    },
    extend: {
      colors: {
        border: "hsl(var(--border))",
        input: "hsl(var(--input))",
        ring: "hsl(var(--ring))",
        background: "hsl(var(--background))",
        foreground: "hsl(var(--foreground))",
        // ... 其他顏色變數
      },
    },
  },
  plugins: [require("tailwindcss-animate")],
};

export default config;
```

#### PostCSS 配置 (postcss.config.mjs)

```javascript
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
};
```

### ESLint 配置 (eslint.config.mjs)

```javascript
import { dirname } from "path";
import { fileURLToPath } from "url";
import { FlatCompat } from "@eslint/eslintrc";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const compat = new FlatCompat({
  baseDirectory: __dirname,
});

const eslintConfig = [
  ...compat.extends("next/core-web-vitals", "next/typescript"),
];

export default eslintConfig;
```

## 環境變數

### 建置環境變數

專案支援以下環境變數：

| 變數名稱 | 預設值 | 說明 |
|----------|--------|------|
| `NODE_ENV` | `'development'` | 執行環境模式 |
| `NEXT_PUBLIC_BASE_URL` | - | 網站基礎 URL（可選） |

### 部署環境變數

#### Vercel 部署

```bash
# vercel.json
{
  "buildCommand": "npm run build",
  "outputDirectory": "out",
  "installCommand": "npm install"
}
```

#### 自訂環境變數

如需添加自訂環境變數，請在專案根目錄建立 `.env.local` 檔案：

```bash
# .env.local
NEXT_PUBLIC_SITE_URL=https://your-domain.com
NEXT_PUBLIC_ANALYTICS_ID=your-analytics-id
```

## 內容配置

### 文檔目錄結構

```
content/docs/
├── installation.mdx      # 安裝指南
├── routing.mdx           # 路由文檔
├── database.mdx          # 資料庫文檔
└── ...
```

### MDX 前置資料格式

每個 MDX 檔案應包含以下前置資料：

```yaml
---
title: "文檔標題"
description: "文檔簡短描述"
keywords: "關鍵字1, 關鍵字2, 關鍵字3"
---

# 文檔內容
```

### 側邊欄導航配置

側邊欄配置位於 `lib/docs-config.ts`：

```typescript
export const sidebarItems = [
  {
    title: '章節標題',
    items: [
      { title: '頁面標題', href: '/docs/slug' },
      // ... 更多頁面
    ]
  },
  // ... 更多章節
]
```

## 搜尋配置

### Pagefind 配置

搜尋功能通過 Pagefind 實現，配置在 `package.json` 的 postbuild 腳本中：

```json
{
  "scripts": {
    "postbuild": "npx pagefind --site out --output-path public/pagefind"
  }
}
```

#### Pagefind 選項

- `--site out`: 指定建置輸出目錄
- `--output-path public/pagefind`: 指定搜尋索引輸出位置

### 搜尋語言支援

Pagefind 預設支援中文搜尋，無需額外配置。

## 主題配置

### CSS 變數定義

主題顏色通過 CSS 變數定義在 `app/globals.css`：

```css
:root {
  --background: 0 0% 100%;
  --foreground: 222.2 84% 4.9%;
  --card: 0 0% 100%;
  /* ... */
}

.dark {
  --background: 222.2 84% 4.9%;
  --foreground: 210 40% 98%;
  --card: 222.2 84% 4.9%;
  /* ... */
}
```

### 主題提供者配置

主題配置在 `components/theme-provider.tsx`：

```tsx
<ThemeProvider
  attribute="class"
  defaultTheme="system"
  enableSystem
  disableTransitionOnChange
>
  {children}
</ThemeProvider>
```

## 字體配置

### 自訂字體載入

字體配置在 `app/layout.tsx`：

```typescript
const genryuSans = localFont({
  variable: "--font-genryu",
  display: "swap",
  src: [
    { path: "../public/genryu/GenRyuMinTW-EL-01.woff2", weight: "200", style: "normal" },
    { path: "../public/genryu/GenRyuMinTW-L-01.woff2", weight: "300", style: "normal" },
    // ... 更多字體檔案
  ],
});
```

## 建置配置

### 建置優化

- **程式碼分割**: Next.js 自動按路由分割
- **圖片優化**: 自動 WebP 轉換和響應式圖片
- **CSS 優化**: Tailwind CSS 的 tree-shaking
- **靜態資源**: 自動添加雜湊和快取標頭

### 分析和優化

```bash
# 分析建置輸出
npm install --save-dev @next/bundle-analyzer

# 在 next.config.ts 中添加
import { BundleAnalyzerPlugin } from '@next/bundle-analyzer'

const withBundleAnalyzer = BundleAnalyzerPlugin({
  enabled: process.env.ANALYZE === 'true',
})
```

## 部署配置

### 支援的部署平台

#### Vercel（推薦）

```bash
# vercel.json
{
  "buildCommand": "npm run build",
  "outputDirectory": "out",
  "framework": "nextjs"
}
```

#### Netlify

```toml
# netlify.toml
[build]
  command = "npm run build"
  publish = "out"
```

#### GitHub Pages

```bash
# 部署到 gh-pages 分支
npm install --save-dev gh-pages
npm run deploy
```

## 開發環境配置

### 開發工具

- **VS Code**: 推薦使用 ESLint 和 Prettier 擴展
- **Node.js**: 18.0+ 版本
- **Git**: 分支管理和版本控制

### 開發腳本

```json
{
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "lint": "eslint . --ext .ts,.tsx",
    "lint:fix": "eslint . --ext .ts,.tsx --fix",
    "type-check": "tsc --noEmit"
  }
}
```

## 疑難排解

### 常見配置問題

#### 建置失敗

```bash
# 清除快取
rm -rf .next out node_modules/.cache
npm install
npm run build
```

#### 搜尋功能失效

```bash
# 重新生成搜尋索引
rm -rf public/pagefind
npm run postbuild
```

#### 字體載入問題

檢查 `public/genryu/` 目錄是否存在字體檔案，並確認路徑正確。