# 使用範例和教學

## 快速入門

### 基本使用流程

1. **訪問首頁**
   - 開啟瀏覽器訪問 `https://laravel-tw.vercel.app`
   - 網站會自動適應您的系統主題偏好

2. **瀏覽文檔**
   - 使用左側導航欄瀏覽不同章節
   - 點擊任一章節進入詳細內容

3. **使用搜尋功能**
   - 在頁面頂部輸入關鍵字
   - 從搜尋結果中選擇相關內容

4. **切換主題**
   - 點擊右上角的太陽/月亮圖標
   - 在明亮和深色模式間切換

## 開發者指南

### 本地開發設定

#### 環境準備

```bash
# 1. 複製專案
git clone https://github.com/your-username/laravel-tw.git
cd laravel-tw

# 2. 安裝依賴
npm install

# 3. 啟動開發伺服器
npm run dev

# 4. 開啟瀏覽器訪問 http://localhost:3000
```

#### 開發工作流程

```bash
# 程式碼檢查
npm run lint

# 類型檢查
npm run type-check

# 建置測試
npm run build
```

### 新增文檔頁面

#### 1. 建立 MDX 檔案

在 `content/docs/` 目錄下建立新的文檔檔案：

```markdown
---
title: "我的新頁面"
description: "這是一個新的文檔頁面"
keywords: "新功能, 指南"
---

# 我的新頁面

這是頁面的主要內容。

## 子標題

更多詳細內容...

## 程式碼範例

```php
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ExampleController extends Controller
{
    public function index()
    {
        return view('example');
    }
}
```

## 提示區塊

> **注意**: 這是一個重要的提醒。

## 清單

- 第一項
- 第二項
- 第三項
```

#### 2. 更新導航配置

編輯 `lib/docs-config.ts` 檔案：

```typescript
export const sidebarItems = [
  // ... 現有章節
  {
    title: '新章節',
    items: [
      { title: '我的新頁面', href: '/docs/my-new-page' },
      // ... 其他頁面
    ]
  }
]
```

#### 3. 驗證和測試

```bash
# 檢查 MDX 語法
npx mdx-validate content/docs/my-new-page.mdx

# 重新建置網站
npm run build

# 啟動本地伺服器檢查
npm run start
```

### 自訂主題

#### 修改顏色方案

編輯 `app/globals.css`：

```css
:root {
  --background: 0 0% 100%;     /* 背景色 */
  --foreground: 222.2 84% 4.9%; /* 前景色 */
  --primary: 221.2 83.2% 53.3%; /* 主色調 */
  --secondary: 210 40% 96%;     /* 次色調 */
  /* ... 其他變數 */
}

.dark {
  --background: 222.2 84% 4.9%;
  --foreground: 210 40% 98%;
  --primary: 217.2 91.2% 59.8%;
  --secondary: 217.2 32.6% 17.5%;
  /* ... 其他變數 */
}
```

#### 新增自訂元件

建立 `components/custom/` 目錄並新增元件：

```tsx
// components/custom/CodeExample.tsx
'use client'

import { useState } from 'react'
import { Button } from '@/components/ui/button'

interface CodeExampleProps {
  title: string
  children: React.ReactNode
}

export function CodeExample({ title, children }: CodeExampleProps) {
  const [copied, setCopied] = useState(false)

  const copyToClipboard = async () => {
    const text = children?.toString() || ''
    await navigator.clipboard.writeText(text)
    setCopied(true)
    setTimeout(() => setCopied(false), 2000)
  }

  return (
    <div className="border rounded-lg p-4 my-4">
      <div className="flex justify-between items-center mb-2">
        <h4 className="font-semibold">{title}</h4>
        <Button
          size="sm"
          variant="outline"
          onClick={copyToClipboard}
        >
          {copied ? '已複製!' : '複製'}
        </Button>
      </div>
      <div className="bg-gray-100 dark:bg-gray-800 p-3 rounded font-mono text-sm overflow-x-auto">
        {children}
      </div>
    </div>
  )
}
```

在 MDX 中使用：

```markdown
import { CodeExample } from '@/components/custom/CodeExample'

<CodeExample title="Laravel 路由範例">
```php
Route::get('/users', [UserController::class, 'index']);
```
</CodeExample>
```

## 進階用法

### API 整合

#### 搜尋 API 使用

```typescript
// 使用 Pagefind API
import * as Pagefind from 'pagefind'

// 初始化搜尋
const pagefind = await Pagefind.load()

// 執行搜尋
const results = await pagefind.search('Laravel')

// 處理結果
results.forEach(result => {
  console.log(result.meta.title, result.url)
})
```

#### 自訂搜尋元件

```tsx
// components/Search.tsx
'use client'

import { useState, useEffect } from 'react'
import type * as Pagefind from 'pagefind'

export function Search() {
  const [query, setQuery] = useState('')
  const [results, setResults] = useState<Pagefind.SearchResult[]>([])
  const [pagefind, setPagefind] = useState<Pagefind.Pagefind | null>(null)

  useEffect(() => {
    Pagefind.load().then(setPagefind)
  }, [])

  const handleSearch = async (searchQuery: string) => {
    if (!pagefind || !searchQuery.trim()) {
      setResults([])
      return
    }

    const searchResults = await pagefind.search(searchQuery)
    setResults(searchResults)
  }

  useEffect(() => {
    const timeoutId = setTimeout(() => handleSearch(query), 300)
    return () => clearTimeout(timeoutId)
  }, [query])

  return (
    <div className="search-container">
      <input
        type="text"
        placeholder="搜尋文檔..."
        value={query}
        onChange={(e) => setQuery(e.target.value)}
        className="search-input"
      />

      {results.length > 0 && (
        <div className="search-results">
          {results.map((result, index) => (
            <a
              key={index}
              href={result.url}
              className="search-result"
            >
              <h4>{result.meta.title}</h4>
              <p>{result.excerpt}</p>
            </a>
          ))}
        </div>
      )}
    </div>
  )
}
```

### 主題系統擴展

#### 新增更多主題

```typescript
// lib/themes.ts
export const themes = {
  light: {
    background: 'hsl(0 0% 100%)',
    foreground: 'hsl(222.2 84% 4.9%)',
    // ... 其他顏色
  },
  dark: {
    background: 'hsl(222.2 84% 4.9%)',
    foreground: 'hsl(210 40% 98%)',
    // ... 其他顏色
  },
  blue: {
    background: 'hsl(210 40% 98%)',
    foreground: 'hsl(222.2 84% 4.9%)',
    primary: 'hsl(221.2 83.2% 53.3%)',
    // ... 其他顏色
  }
}
```

#### 動態主題切換

```tsx
// components/ThemeSelector.tsx
'use client'

import { useTheme } from 'next-themes'
import { Button } from '@/components/ui/button'

const availableThemes = ['light', 'dark', 'blue', 'system']

export function ThemeSelector() {
  const { theme, setTheme } = useTheme()

  return (
    <div className="flex gap-2">
      {availableThemes.map((themeName) => (
        <Button
          key={themeName}
          variant={theme === themeName ? 'default' : 'outline'}
          size="sm"
          onClick={() => setTheme(themeName)}
        >
          {themeName === 'system' ? '系統' :
           themeName === 'light' ? '明亮' :
           themeName === 'dark' ? '深色' : '藍色'}
        </Button>
      ))}
    </div>
  )
}
```

### 內容管理

#### 動態內容載入

```typescript
// lib/content.ts
import fs from 'fs'
import path from 'path'

export interface ContentItem {
  slug: string
  title: string
  description: string
  category: string
  tags: string[]
  lastModified: Date
}

export async function getContentList(category?: string): Promise<ContentItem[]> {
  const contentDir = path.join(process.cwd(), 'content/docs')
  const files = fs.readdirSync(contentDir)

  const contentList = await Promise.all(
    files
      .filter(file => file.endsWith('.mdx'))
      .map(async (file) => {
        const slug = file.replace('.mdx', '')
        const filePath = path.join(contentDir, file)

        // 讀取檔案前置資料
        const content = fs.readFileSync(filePath, 'utf8')
        const frontmatter = parseFrontmatter(content)

        return {
          slug,
          title: frontmatter.title,
          description: frontmatter.description,
          category: frontmatter.category || 'general',
          tags: frontmatter.tags || [],
          lastModified: fs.statSync(filePath).mtime
        }
      })
  )

  // 依類別篩選
  if (category) {
    return contentList.filter(item => item.category === category)
  }

  return contentList
}

// 簡單的前置資料解析
function parseFrontmatter(content: string) {
  const match = content.match(/^---\n([\s\S]*?)\n---/)
  if (!match) return {}

  const frontmatter = match[1]
  const result: Record<string, any> = {}

  frontmatter.split('\n').forEach(line => {
    const [key, ...valueParts] = line.split(':')
    if (key && valueParts.length > 0) {
      const value = valueParts.join(':').trim()
      result[key.trim()] = value.replace(/^["']|["']$/g, '') // 移除引號
    }
  })

  return result
}
```

#### 內容分類系統

```tsx
// components/ContentGrid.tsx
'use client'

import { useState, useEffect } from 'react'
import { getContentList, ContentItem } from '@/lib/content'
import { Card } from '@/components/ui/card'

export function ContentGrid() {
  const [contents, setContents] = useState<ContentItem[]>([])
  const [category, setCategory] = useState<string>('all')
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    const loadContents = async () => {
      setLoading(true)
      const data = await getContentList(category === 'all' ? undefined : category)
      setContents(data)
      setLoading(false)
    }

    loadContents()
  }, [category])

  const categories = ['all', 'getting-started', 'architecture', 'features', 'security']

  if (loading) {
    return <div className="text-center py-8">載入中...</div>
  }

  return (
    <div className="space-y-6">
      {/* 分類篩選 */}
      <div className="flex gap-2 flex-wrap">
        {categories.map((cat) => (
          <button
            key={cat}
            onClick={() => setCategory(cat)}
            className={`px-3 py-1 rounded-full text-sm ${
              category === cat
                ? 'bg-primary text-primary-foreground'
                : 'bg-secondary hover:bg-secondary/80'
            }`}
          >
            {cat === 'all' ? '全部' :
             cat === 'getting-started' ? '入門' :
             cat === 'architecture' ? '架構' :
             cat === 'features' ? '功能' : '安全性'}
          </button>
        ))}
      </div>

      {/* 內容網格 */}
      <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
        {contents.map((item) => (
          <Card key={item.slug} className="p-4 hover:shadow-lg transition-shadow">
            <h3 className="font-semibold mb-2">
              <a href={`/docs/${item.slug}`} className="hover:text-primary">
                {item.title}
              </a>
            </h3>
            <p className="text-sm text-muted-foreground mb-3">
              {item.description}
            </p>
            <div className="flex flex-wrap gap-1">
              {item.tags.slice(0, 3).map((tag) => (
                <span
                  key={tag}
                  className="px-2 py-1 bg-secondary text-secondary-foreground text-xs rounded"
                >
                  {tag}
                </span>
              ))}
            </div>
            <div className="text-xs text-muted-foreground mt-2">
              更新時間: {item.lastModified.toLocaleDateString('zh-TW')}
            </div>
          </Card>
        ))}
      </div>
    </div>
  )
}
```

## 部署範例

### Vercel 自動部署

#### 1. 連接到 GitHub

```bash
# 將程式碼推送到 GitHub
git add .
git commit -m "Add new documentation"
git push origin main
```

#### 2. Vercel 自動部署

Vercel 會自動偵測到程式碼變更並開始建置：

```
[12:34:56] 開始建置
[12:34:58] 安裝依賴
[12:35:02] 建置應用程式
[12:35:15] 生成搜尋索引
[12:35:18] 部署完成
[12:35:20] 網站已上線: https://laravel-tw.vercel.app
```

#### 3. 自訂域名

在 Vercel 控制台中設定自訂域名：

```
Settings → Domains → Add your-domain.com
```

### 手動部署到其他平台

#### Netlify 部署

```bash
# 安裝 Netlify CLI
npm install -g netlify-cli

# 登入並部署
netlify login
netlify deploy --prod --dir=out
```

#### GitHub Pages 部署

```bash
# 使用 GitHub Actions
# 建立 .github/workflows/deploy.yml
```

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Setup Node.js
        uses: actions/setup-node@v4
        with:
          node-version: '18'

      - name: Install dependencies
        run: npm ci

      - name: Build
        run: npm run build

      - name: Deploy
        uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./out
```

## 效能優化

### 圖片優化

```tsx
// components/OptimizedImage.tsx
import Image from 'next/image'

interface OptimizedImageProps {
  src: string
  alt: string
  width?: number
  height?: number
  priority?: boolean
}

export function OptimizedImage({
  src,
  alt,
  width = 800,
  height = 600,
  priority = false
}: OptimizedImageProps) {
  return (
    <Image
      src={src}
      alt={alt}
      width={width}
      height={height}
      priority={priority}
      placeholder="blur"
      blurDataURL="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQ..."
      className="rounded-lg shadow-lg"
    />
  )
}
```

### 懶載入元件

```tsx
// components/LazyWrapper.tsx
'use client'

import { Suspense, lazy } from 'react'

// 懶載入大型元件
const HeavyComponent = lazy(() => import('./HeavyComponent'))

export function LazyWrapper() {
  return (
    <Suspense fallback={<div>載入中...</div>}>
      <HeavyComponent />
    </Suspense>
  )
}
```

## 整合範例

### 與 Laravel 專案整合

#### API 路由範例

```php
// Laravel API 路由
Route::get('/api/docs/search', function (Request $request) {
    $query = $request->get('q');

    // 模擬搜尋 Laravel 文檔
    $results = [
        [
            'title' => '路由',
            'url' => 'https://laravel-tw.vercel.app/docs/routing',
            'excerpt' => 'Laravel 路由系統讓你可以輕鬆定義應用程式的端點...'
        ]
    ];

    return response()->json($results);
});
```

#### Blade 模板整合

```blade
{{-- resources/views/docs.blade.php --}}
<!DOCTYPE html>
<html lang="zh-TW">
<head>
    <meta charset="utf-8">
    <title>Laravel 文檔</title>
    <link href="https://laravel-tw.vercel.app/styles.css" rel="stylesheet">
</head>
<body>
    <div id="laravel-docs">
        <iframe
            src="https://laravel-tw.vercel.app"
            width="100%"
            height="100%"
            frameborder="0"
        ></iframe>
    </div>

    <script src="https://laravel-tw.vercel.app/scripts.js"></script>
</body>
</html>
```

### CMS 整合

#### WordPress 短代碼

```php
// functions.php
function laravel_docs_shortcode($atts) {
    $atts = shortcode_atts([
        'section' => 'installation',
        'height' => '600px'
    ], $atts);

    return sprintf(
        '<iframe src="https://laravel-tw.vercel.app/docs/%s" width="100%%" height="%s" frameborder="0"></iframe>',
        esc_attr($atts['section']),
        esc_attr($atts['height'])
    );
}
add_shortcode('laravel_docs', 'laravel_docs_shortcode');
```

在 WordPress 文章中使用：

```
[laravel_docs section="routing" height="800px"]
```

## 最佳實踐

### 內容創作

1. **結構清晰**: 使用適當的標題層次
2. **程式碼範例**: 提供實際可執行的程式碼
3. **逐步說明**: 將複雜任務分解為步驟
4. **視覺輔助**: 使用圖表和圖片說明概念

### SEO 優化

1. **關鍵字研究**: 針對 Laravel 開發者常用的搜尋詞
2. **元描述**: 每個頁面都有吸引人的描述
3. **結構化資料**: 使用 JSON-LD 標記重要內容
4. **內部連結**: 在相關頁面間建立連結

### 使用者體驗

1. **載入效能**: 保持頁面大小合理
2. **導航直覺**: 邏輯清晰的導航結構
3. **搜尋友好**: 強大的搜尋功能
4. **響應式設計**: 在所有裝置上都能良好顯示

### 維護建議

1. **定期更新**: 跟隨 Laravel 新版本更新文檔
2. **社群參與**: 鼓勵使用者貢獻和回饋
3. **監控指標**: 追蹤使用情況和效能指標
4. **備份策略**: 定期備份內容和配置