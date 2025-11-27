# 任務：Laravel 12.x 官方文件繁體中文翻譯計畫

## 1. 專案目標

將 Laravel 12.x 官方英文文件（Markdown 格式）翻譯為流暢、專業的「台灣繁體中文（Traditional Chinese, Taiwan）」。目標是產出一份開發者易讀、術語精確的中文文件。

## 2. 角色設定 (Role Definition)

你是一位資深的 Full-Stack 工程師，精通 Laravel 架構與 PHP 生態系，同時也是一位專業的技術翻譯者。

- **語氣**：專業、客觀、友善且易於理解。
- **受眾**：繁體中文區的 Web 開發者（初階至高階）。

## 3. 核心翻譯準則 (Translation Guidelines)

### 3.1 語言風格

- **地區**：台灣繁體中文 (zh-TW)。
- **用詞**：
  - 使用「專案」而非「項目」。
  - 使用「程式碼」而非「代碼」。
  - 使用「透過」而非「通過」。
  - 使用「伺服器」而非「服務器」。
  - 使用「資料庫」而非「數據庫」。
  - 使用「預設」而非「默認」。

### 3.2 程式碼處理 (Code Handling)

- **嚴格禁止**翻譯程式碼區塊（Code Blocks）內的任何變數、函數名、註解或字串，除非註解是為了教學用途且不影響程式執行。
- 行內程式碼（Inline Code，即 ` ` 包裹的內容）保持原文，**不進行翻譯**。
- 連結網址（URLs）保持原樣，不要翻譯。

### 3.3 專有名詞保留 (Terminology)

為了保持技術精確度，以下 Laravel 核心術語**保留英文**或使用**習慣性譯名**（若有括號，首次出現時使用「中文 (English)」，後續可視情況混用）：

- **核心概念**：Service Container, Service Provider, Facade, Middleware (中介軟體), Eloquent ORM, Migration, Seeder, Factory.
- **功能模組**：Routing (路由), Controller, Request, Response, Session, Validation, Blade Templates.
- **其他**：Composer, Artisan, Queue, Job, Event, Listener.

---

## 4. 執行步驟 (Execution Steps)

請依照以下順序執行任務。每完成一個步驟，請標記為 `[x]` 並儲存進度。

### Phase 1: 環境準備與分析

- [x] **Step 1.1**: 取得 Laravel 12.x 原始文件來源（通常位於 GitHub `laravel/docs` repository 的 `12.x` 分支）。
- [x] **Step 1.2**: 掃描所有 `.md` 檔案，建立檔案清單索引 (File Manifest)。
- [x] **Step 1.3**: 建立 `GLOSSARY.md`（術語表），列出將要使用的中英對照表，確保後續翻譯一致性。

### Phase 2: 核心章節翻譯 (Core Documentation)

_請依照 Laravel 官方文件的邏輯順序進行翻譯。_

#### Batch A: 入門與架構 (Prolog & Architecture)

- [x] **Step 2.1**: 翻譯 `installation.md` (安裝)
- [x] **Step 2.1b**: 翻譯 `content/docs/validation.mdx` (驗證)
- [x] **Step 2.2**: 翻譯 `configuration.md` (設定)
- [x] **Step 2.3**: 翻譯 `structure.md` (目錄結構)
- [x] **Step 2.4**: 翻譯 `lifecycle.md` (生命週期)
- [x] **Step 2.5**: 翻譯 `container.md` (Service Container) & `providers.md` (Service Providers)
- [x] **Step 2.6**: 翻譯 `facades.md` (Facades)
- [x] **Step 2.6b**: 翻譯 `starter-kits.md` (啟動套件)

#### Batch B: 基礎功能 (The Basics)

- [x] **Step 2.7**: 翻譯 `routing.md` (路由)
- [x] **Step 2.8**: 翻譯 `middleware.md` (中介軟體)
- [x] **Step 2.9**: 翻譯 `csrf.md` (CSRF 保護)
- [x] **Step 2.10**: 翻譯 `controllers.md` (控制器)
- [x] **Step 2.11**: 翻譯 `requests.md` (請求) & `responses.md` (回應)
- [x] **Step 2.12**: 翻譯 `views.md` (視圖) & `blade.md` (Blade 樣板)

### Phase 3: 進階功能翻譯 (Deep Dive)

#### Batch C: 資料庫與 Eloquent (Database)

- [x] **Step 3.1**: 翻譯 `database.md` (資料庫基礎)
- [x] **Step 3.2**: 翻譯 `queries.md` (Query Builder)
- [x] **Step 3.3**: 翻譯 `pagination.md` (分頁)
- [x] **Step 3.4**: 翻譯 `migrations.md` (遷移)
- [x] **Step 3.5**: 翻譯 `seeding.md` (Seeding)
- [x] **Step 3.6**: 翻譯 `redis.md` (Redis)
- [x] **Step 3.7**: 翻譯 Eloquent 相關章節 (`eloquent.md`, `eloquent-relationships.md`, `eloquent-collections.md` 等)

#### Batch D: 安全性與測試 (Security & Testing)

- [x] **Step 4.1**: 翻譯 `authentication.md` (驗證) & `authorization.md` (授權)
- [x] **Step 4.2**: 翻譯 `encryption.md` (加密) & `hashing.md` (雜湊)
- [x] **Step 4.3**: 翻譯 `testing.md` (測試概論), `http-tests.md`, `console-tests.md`, `dusk.md`

### Phase 4: 其他重要組件 (Digging Deeper)

- [x] **Step 5.1**: 翻譯 `artisan.md` (Artisan Console)
- [x] **Step 5.2**: 翻譯 `broadcasting.md` (廣播)
- [x] **Step 5.3**: 翻譯 `cache.md` (快取)
- [x] **Step 5.4**: 翻譯 `collections.md` (集合 - 僅翻譯說明文字，方法名稱保留)
- [x] **Step 5.5**: 翻譯 `events.md` (事件), `filesystem.md` (檔案儲存), `helpers.md` (輔助函式)
- [x] **Step 5.6**: 翻譯 `mail.md` (郵件), `notifications.md` (通知), `queues.md` (佇列), `scheduling.md` (排程)

### Phase 5: 官方套件與部署 (Packages & Deployment)

- [x] **Step 6.1**: 翻譯官方套件文件 (如 `breeze.md`, `sail.md`, `sanctum.md`, `fortify.md` 等)
- [x] **Step 6.2**: 翻譯 `deployment.md` (部署)

## 5. 輸出驗證 (Output Verification)

翻譯完成後，請執行以下檢查：

- [x] **格式檢查**：確認所有 Markdown 標題 (`#`), 列表 (`-`), 引用 (`>`) 格式正確且未跑版。
- [x] **連結檢查**：確認內部連結 (Relative Links) 依然有效，且沒有錯誤地被翻譯成中文檔名（除非檔名也一併中文化，建議檔名保持英文）。
- [x] **程式碼完整性**：隨機抽查 5-10 個檔案，確認程式碼區塊完全未被更動。
- [x] **構建驗證**：執行 `npm run build` 確認所有頁面可以正常生成（104 個路徑）。

## 6. 錯誤處理 (Error Handling)

- 若遇到無法確定的術語，請在 `TRANSLATION_NOTES.md` 中標記並保留原文，等待人工確認。
- 若文件過長導致 Context Window 限制，請將單一檔案拆分為 `Part 1`, `Part 2` 處理後再合併。

---

## ✅ 完成狀態

**所有翻譯任務已完成！**

- **總計翻譯文件**：100 個 MDX 文件
- **構建狀態**：成功（104 個路徑已生成）
- **開發伺服器**：可正常運行於 http://localhost:3000
