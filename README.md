# Laravel 12 中文文檔網站

[![Next.js](https://img.shields.io/badge/Next.js-14+-000000?style=flat&logo=next.js)](https://nextjs.org/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5+-3178C6?style=flat&logo=typescript)](https://www.typescriptlang.org/)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-3+-06B6D4?style=flat&logo=tailwind-css)](https://tailwindcss.com/)
[![Laravel](https://img.shields.io/badge/Laravel-12-FF2D20?style=flat&logo=laravel)](https://laravel.com/)

Laravel 12 官方文檔的正體中文翻譯版本，提供完整的 Laravel 框架文檔翻譯和互動式文檔網站。

## 📋 項目概要

這是一個專為 Laravel 台灣社群打造的互動式文檔網站，將 Laravel 官方文檔翻譯為繁體中文，並提供現代化的閱讀體驗。網站採用 Next.js 14+ 構建，支援 MDX 文檔渲染、即時搜尋、全響應式設計和深色模式。

### 🎯 主要特色

- **完整的繁體中文翻譯**: Laravel 12 官方文檔的完整正體中文版本
- **現代化閱讀體驗**: 採用 Next.js 和 MDX 技術，提供流暢的文檔閱讀體驗
- **即時搜尋功能**: 整合 Pagefind 搜尋引擎，支援全文檢索
- **響應式設計**: 完美適配桌面、平板和手機等各種裝置
- **深色模式支援**: 提供明亮和深色兩種主題模式
- **語法高亮**: 支援 PHP、JavaScript、Blade 模板等多種程式語言語法高亮
- **離線優先**: PWA 支援，提供離線閱讀體驗

## 🚀 技術棧

### 前端框架
- **Next.js 16.0.4**: React 全端框架，提供 SSR 和靜態生成
- **React 19.2.0**: 使用者介面框架
- **TypeScript 5.0**: 提供類型安全的開發體驗

### 樣式和 UI
- **Tailwind CSS 4.0**: 實用優先的 CSS 框架
- **Radix UI**: 無障礙的 UI 組件庫
- **Lucide React**: 現代化的圖標庫
- **next-themes**: 主題切換功能

### 文檔處理
- **MDX**: Markdown 擴展語法，支援 JSX 在文檔中
- **next-mdx-remote**: MDX 遠端編譯
- **Shiki**: 程式碼語法高亮
- **rehype-plugins**: HTML 處理插件

### 搜尋功能
- **Pagefind**: 靜態網站搜尋引擎
- **中文分詞支援**: 支援繁體中文全文檢索

### 開發工具
- **ESLint**: 程式碼品質檢查
- **TypeScript**: 類型檢查
- **PostCSS**: CSS 處理

## 📦 安裝與設定

### 系統需求

- **Node.js**: 18.0 或更高版本
- **npm**: 8.0 或更高版本
- **Git**: 2.0 或更高版本

### 本地開發環境設定

1. **複製專案**
   ```bash
   git clone https://github.com/your-username/laravel-tw.git
   cd laravel-tw
   ```

2. **安裝依賴**
   ```bash
   npm install
   ```

3. **啟動開發伺服器**
   ```bash
   npm run dev
   ```

4. **開啟瀏覽器**

   訪問 [http://localhost:3000](http://localhost:3000) 查看網站。

### 建置生產版本

```bash
# 建置生產版本
npm run build

# 啟動生產伺服器
npm start
```

### 部署準備

專案包含自動化部署腳本：

```bash
# 執行部署腳本（會自動建置並打包）
./deploy.sh
```

## 📁 專案結構

```
laravel-tw/
├── app/                          # Next.js App Router 目錄
│   ├── docs/                     # 動態文檔路由
│   │   ├── [slug]/               # 動態 slug 路由
│   │   └── layout.tsx            # 文檔頁面佈局
│   ├── favicon.ico               # 網站圖標
│   ├── globals.css               # 全域樣式
│   ├── layout.tsx                # 根佈局元件
│   └── page.tsx                  # 首頁元件
├── components/                   # React 元件
│   ├── mode-toggle.tsx           # 主題切換元件
│   └── ui/                       # UI 組件庫
├── content/                      # MDX 文檔內容
│   └── docs/                     # Laravel 文檔檔案
├── lib/                          # 工具函數和配置
│   ├── docs-config.ts            # 側邊欄導航配置
│   ├── docs.tsx                  # 文檔處理邏輯
│   └── utils.ts                  # 通用工具函數
├── public/                       # 靜態資源
│   ├── fonts/                    # 自訂字體檔案
│   ├── pagefind/                 # 搜尋索引檔案
│   └── images/                   # 圖片資源
├── scripts/                      # 建置和維護腳本
│   ├── fix-duplicate-chinese-titles.mjs
│   ├── fix-headers.mjs
│   └── validate-mdx.mjs
├── types/                        # TypeScript 類型定義
└── package.json                  # 專案配置和依賴
```

## 🔧 可用腳本

```bash
# 開發模式啟動
npm run dev

# 生產建置
npm run build

# 生產伺服器啟動
npm start

# 程式碼檢查
npm run lint

# 建置並生成搜尋索引
npm run postbuild
```

## 📚 文檔架構

### 主要章節

- **前言**: 發行說明
- **入門**: 安裝、配置、目錄結構、前端、啟動套件、部署
- **架構**: 請求生命週期、Service Container、Service Providers、Facades
- **基礎功能**: 路由、中介軟體、CSRF 保護、控制器等
- **深入探討**: Artisan 命令列、廣播、快取、集合等
- **安全性**: 驗證、授權、加密、雜湊
- **資料庫**: 資料庫基礎、Query Builder、分頁、遷移等
- **Eloquent ORM**: ORM 基礎、關聯、集合、工廠等
- **測試**: 測試概論、HTTP 測試、控制台測試等
- **官方套件**: Billing、Cashier、Envoy 等

### 文檔格式

所有文檔採用 MDX 格式撰寫，支援：
- **Markdown 語法**: 標準 Markdown 功能
- **JSX 元件**: 在文檔中嵌入互動元件
- **程式碼區塊**: 支援多種程式語言語法高亮
- **表格和清單**: 結構化內容展示
- **圖片和連結**: 多媒體內容支援

## 🔍 搜尋功能

網站整合 Pagefind 搜尋引擎，提供：
- **即時搜尋**: 輸入時即時顯示結果
- **全文檢索**: 搜尋整個文檔內容
- **中文支援**: 完整的繁體中文分詞支援
- **分類篩選**: 按章節和類別篩選結果

## 🎨 主題和外觀

### 深色模式
- 自動偵測系統偏好設定
- 手動切換明亮/深色模式
- 平滑過渡動畫效果

### 字體
- **GenRyu 圓體**: 主要中文字體，提供多種字重
- **Inter**: 英文字體，確保可讀性

### 響應式設計
- **桌面版**: 完整功能和側邊欄導航
- **平板版**: 適應性佈局和觸控優化
- **手機版**: 簡化導航和垂直佈局

## 🚀 部署

### Vercel 部署（推薦）

1. 將程式碼推送至 GitHub
2. 在 Vercel 中匯入專案
3. 設定建置命令：
   ```bash
   npm run build
   ```
4. 部署完成，自動獲得 HTTPS 憑證

### 其他部署選項

支援任何支援 Node.js 的主機服務：
- **Netlify**: 靜態網站託管
- **Railway**: 全端應用程式平台
- **Render**: 雲端應用程式託管

## 🤝 貢獻指南

歡迎參與 Laravel 中文文檔的翻譯和改進！

### 翻譯工作流程

1. **選擇章節**: 查看 `task.md` 中的待翻譯章節
2. **建立分支**: 為您的翻譯工作建立功能分支
3. **翻譯內容**: 參考 `GLOSSARY.md` 中的術語表
4. **提交 PR**: 提交 Pull Request 進行審核

### 開發貢獻

1. **問題回報**: 使用 GitHub Issues 回報錯誤或建議
2. **功能請求**: 提出新功能或改進建議
3. **程式碼貢獻**: 遵循現有的程式碼風格和慣例

### 翻譯準則

- 遵循 `GLOSSARY.md` 中的術語翻譯標準
- 保持技術術語的一致性
- 確保翻譯的準確性和可讀性
- 參考 Laravel 官方英文文檔

## 📄 授權條款

本專案採用 MIT 授權條款。詳見 [LICENSE](LICENSE) 檔案。

## 🙏 致謝

- **Laravel 社群**: 提供優秀的框架和文檔
- **Laravel 台灣社群**: 參與翻譯和維護工作
- **Next.js 團隊**: 提供優秀的全端框架
- **開源社群**: 提供各種優秀的工具和程式庫

## 📞 聯絡方式

- **GitHub Issues**: [回報問題](https://github.com/anomalyco/opencode/issues)
- **電子郵件**: [聯絡維護者](mailto:contact@laravel-tw.dev)

---

**🌟 如果這個專案對您有幫助，請給我們一個 Star！**
