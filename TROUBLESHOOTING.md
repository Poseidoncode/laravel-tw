# 疑難排解指南

## 開發環境問題

### Node.js 版本問題

**問題**: `npm install` 失敗，提示 Node.js 版本不支援

**解決方案**:
```bash
# 檢查當前 Node.js 版本
node --version

# 如果版本低於 18.0，使用 nvm 切換版本
nvm install 18
nvm use 18

# 重新安裝依賴
rm -rf node_modules package-lock.json
npm install
```

**預防措施**:
- 使用 `.nvmrc` 檔案指定專案需要的 Node.js 版本
- 在 CI/CD 中檢查 Node.js 版本

### 依賴安裝問題

**問題**: 安裝過程卡住或失敗

**解決方案**:
```bash
# 清除 npm 快取
npm cache clean --force

# 使用不同的 registry
npm install --registry=https://registry.npmjs.org/

# 或使用 yarn
yarn install

# 或使用 pnpm
pnpm install
```

### 記憶體不足錯誤

**問題**: `JavaScript heap out of memory` 錯誤

**解決方案**:
```bash
# 增加 Node.js 記憶體限制
export NODE_OPTIONS="--max-old-space-size=4096"
npm run build

# 或在 package.json 中設定
{
  "scripts": {
    "build": "NODE_OPTIONS='--max-old-space-size=4096' next build"
  }
}
```

## 建置問題

### Next.js 建置失敗

**問題**: `npm run build` 失敗

**常見原因和解決方案**:

#### TypeScript 錯誤
```bash
# 檢查類型錯誤
npm run type-check

# 修復類型錯誤後重新建置
npm run build
```

#### 靜態資源載入錯誤
```bash
# 檢查 public 目錄中的檔案
ls -la public/

# 確保字體檔案存在
ls -la public/genryu/
```

#### MDX 編譯錯誤
```bash
# 驗證 MDX 檔案語法
npx mdx-validate content/docs/installation.mdx

# 檢查 frontmatter 格式
head -20 content/docs/installation.mdx
```

### Pagefind 搜尋索引生成失敗

**問題**: 建置後搜尋功能無法使用

**解決方案**:
```bash
# 手動生成搜尋索引
npx pagefind --site out --output-path public/pagefind

# 檢查索引檔案是否生成
ls -la public/pagefind/
```

**常見原因**:
- `out` 目錄不存在
- Pagefind 未正確安裝
- 中文編碼問題

## 開發伺服器問題

### 熱重載不工作

**問題**: 修改程式碼後頁面沒有自動更新

**解決方案**:
```bash
# 重新啟動開發伺服器
npm run dev

# 或檢查檔案監視限制
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
```

### 連接埠衝突

**問題**: `Error: listen EADDRINUSE: address already in use :::3000`

**解決方案**:
```bash
# 找到佔用連接埠的進程
lsof -ti:3000

# 終止進程
kill -9 $(lsof -ti:3000)

# 或使用不同連接埠
npm run dev -- -p 3001
```

## 執行階段錯誤

### 文檔頁面載入錯誤

**問題**: 訪問 `/docs/some-page` 時顯示 404 或錯誤

**常見原因**:

#### MDX 檔案不存在
```bash
# 檢查檔案是否存在
ls -la content/docs/some-page.mdx

# 如果不存在，檢查 MANIFEST.md 確認檔案名稱
grep "some-page" MANIFEST.md
```

#### 路由配置錯誤
```bash
# 檢查 docs-config.ts 中的路由配置
grep "some-page" lib/docs-config.ts
```

#### 編譯錯誤
```bash
# 檢查 MDX 語法
npx mdx-validate content/docs/some-page.mdx
```

### 主題切換不工作

**問題**: 點擊主題切換按鈕沒有效果

**解決方案**:
```javascript
// 檢查瀏覽器控制台錯誤
// 確認 ThemeProvider 正確包裝應用

// 檢查 CSS 變數是否正確定義
// 查看 app/globals.css 中的 :root 和 .dark 規則
```

### 搜尋功能異常

**問題**: Pagefind 搜尋無法正常工作

**檢查步驟**:
```bash
# 檢查搜尋索引是否存在
ls -la public/pagefind/

# 檢查瀏覽器網路請求
# 確認 pagefind.js 檔案能正常載入

# 檢查控制台錯誤訊息
# 搜尋相關的 JavaScript 錯誤
```

## 部署問題

### Vercel 部署失敗

**問題**: Vercel 建置失敗

**常見解決方案**:

#### 建置命令錯誤
在 Vercel 控制台設定正確的建置命令：
```
Build Command: npm run build
Output Directory: out
Install Command: npm install
```

#### 環境變數問題
```bash
# 在 Vercel 中設定環境變數
NODE_ENV=production
```

#### 記憶體不足
```bash
# 在 vercel.json 中增加記憶體
{
  "functions": {
    "src/pages/api/*.js": {
      "maxDuration": 30
    }
  },
  "regions": ["sin1"]
}
```

### 靜態檔案問題

**問題**: 部署後圖片或字體無法載入

**解決方案**:
```bash
# 檢查 public 目錄結構
tree public/

# 確認 next.config.ts 中的輸出設定
# output: 'export' 應該已設定

# 檢查檔案路徑是否正確
# Next.js 靜態輸出模式下的檔案路徑
```

## 內容相關問題

### MDX 語法錯誤

**問題**: 文檔檔案無法編譯

**常見錯誤**:

#### Frontmatter 格式錯誤
```yaml
# 正確格式
---
title: "標題"
description: "描述"
---

# 不正確格式（缺少引號或格式錯誤）
---
title: 標題
description: "描述
---
```

#### JSX 語法錯誤
```jsx
// 正確的 JSX
<div className="text-center">
  <p>內容</p>
</div>

// 錯誤的 JSX（缺少閉合標籤）
<div className="text-center">
  <p>內容
</div>
```

#### 程式碼區塊錯誤
```markdown
<!-- 正確的程式碼區塊 -->
```php
<?php
echo "Hello World";
?>
```

<!-- 錯誤的程式碼區塊（缺少語言標識） -->
```
<?php
echo "Hello World";
?>
```
```

### 中文編碼問題

**問題**: 中文內容顯示亂碼

**解決方案**:
```bash
# 檢查檔案編碼
file content/docs/installation.mdx

# 轉換為 UTF-8
iconv -f gbk -t utf-8 content/docs/installation.mdx > temp.mdx
mv temp.mdx content/docs/installation.mdx
```

## 效能問題

### 建置時間過長

**問題**: `npm run build` 耗時過長

**優化方案**:
```bash
# 使用建置快取
export NEXT_TELEMETRY_DISABLED=1

# 增加建置平行度
export NEXT_BUILD_PARALLEL=2

# 檢查是否有大型依賴
npm ls --depth=0
```

### 頁面載入慢

**問題**: 生產環境頁面載入緩慢

**檢查點**:
- Lighthouse 效能分數
- 網路請求數量
- 圖片優化狀態
- JavaScript 包大小

**優化建議**:
```javascript
// next.config.ts 優化
const nextConfig = {
  swcMinify: true,
  compress: true,
  images: {
    formats: ['image/webp', 'image/avif'],
  },
}
```

## 除錯技巧

### 開發環境除錯

#### 使用 React Developer Tools
```bash
# 安裝瀏覽器擴展
# Chrome: React Developer Tools
# Firefox: React DevTools
```

#### Next.js 除錯模式
```bash
# 啟用詳細日誌
DEBUG=* npm run dev

# 或使用特定除錯標記
NODE_OPTIONS='--inspect' npm run dev
```

### 生產環境除錯

#### 啟用來源映射
```javascript
// next.config.ts
const nextConfig = {
  productionBrowserSourceMaps: true,
}
```

#### 日誌記錄
```typescript
// 在程式碼中添加日誌
if (process.env.NODE_ENV === 'development') {
  console.log('Debug info:', data)
}
```

## 常見錯誤訊息

### `Module not found` 錯誤

**原因**: 模組路徑錯誤或依賴未安裝

**解決方案**:
```bash
# 檢查模組是否存在
ls -la node_modules/package-name

# 重新安裝
npm install package-name

# 檢查匯入路徑
# 正確: import { Button } from '@/components/ui/button'
# 錯誤: import { Button } from 'components/ui/button'
```

### `TypeScript error` 錯誤

**原因**: 類型定義錯誤

**解決方案**:
```bash
# 檢查類型錯誤
npm run type-check

# 安裝缺失的類型定義
npm install --save-dev @types/package-name
```

### `Hydration mismatch` 錯誤

**原因**: 伺服器端和客戶端渲染結果不一致

**常見原因**:
- 使用 `Math.random()` 或 `Date.now()`
- 依賴瀏覽器 API
- CSS-in-JS 問題

**解決方案**:
```typescript
// 使用 useEffect 處理客戶端邏輯
useEffect(() => {
  // 客戶端專用程式碼
}, [])
```

## 工具和資源

### 除錯工具

- **React DevTools**: 元件檢查和除錯
- **Next.js DevTools**: Next.js 特定功能
- **Lighthouse**: 效能分析
- **WebPageTest**: 網站速度測試

### 監控工具

- **Sentry**: 錯誤追蹤
- **Vercel Analytics**: 部署監控
- **Google Analytics**: 使用者行為分析

### 社群支援

- **GitHub Issues**: 回報錯誤
- **Discord/論壇**: 社群討論
- **Stack Overflow**: 技術問題解答

## 預防措施

### 程式碼品質

```bash
# 使用 ESLint 和 Prettier
npm run lint
npm run format

# 類型檢查
npm run type-check

# 測試覆蓋
npm run test -- --coverage
```

### 持續整合

```yaml
# .github/workflows/ci.yml
name: CI
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: '18'
      - run: npm ci
      - run: npm run lint
      - run: npm run type-check
      - run: npm test
```

### 定期維護

- 每月更新依賴套件
- 檢查安全漏洞
- 監控效能指標
- 清理無用程式碼