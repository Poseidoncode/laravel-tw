# 任務：Laravel 12.x 官方文件繁體中文翻譯計畫 - Phase 2

## 1. 專案目標

繼續完成 Laravel 12.x 官方英文文件翻譯為流暢、專業的「台灣繁體中文（Traditional Chinese, Taiwan）」。所有章節已經有.mdx 文件，但內容大多還是英文，需要繼續翻譯。

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

## 4. 發現的問題

- Sidebar 缺少 Session 章節，已添加。
- 所有章節的.mdx 文件存在，但內容大多還是英文，需要繼續翻譯。

## 5. 執行步驟 (Execution Steps)

請繼續翻譯所有章節的英文內容。每完成一個章節，請標記為 `[x]` 並儲存進度。

### Phase 2: 繼續翻譯所有章節

#### 前言

- [ ] **Step 2.1**: 完成翻譯 `releases.md` (發行說明)

#### 入門

- [ ] **Step 2.2**: 完成翻譯 `installation.md` (安裝)
- [ ] **Step 2.3**: 完成翻譯 `configuration.md` (配置)
- [ ] **Step 2.4**: 完成翻譯 `structure.md` (目錄結構)
- [ ] **Step 2.5**: 完成翻譯 `lifecycle.md` (生命週期)

#### 架構

- [ ] **Step 2.6**: 完成翻譯 `container.md` (Service Container) & `providers.md` (Service Providers)
- [ ] **Step 2.7**: 完成翻譯 `facades.md` (Facades)

#### 基礎功能

- [ ] **Step 2.8**: 完成翻譯 `routing.md` (路由)
- [ ] **Step 2.9**: 完成翻譯 `middleware.md` (中介軟體)
- [ ] **Step 2.10**: 完成翻譯 `csrf.md` (CSRF 保護)
- [ ] **Step 2.11**: 完成翻譯 `controllers.md` (控制器)
- [ ] **Step 2.12**: 完成翻譯 `requests.md` (請求)
- [ ] **Step 2.13**: 完成翻譯 `session.md` (Session)
- [ ] **Step 2.14**: 完成翻譯 `responses.md` (回應)
- [ ] **Step 2.15**: 完成翻譯 `views.md` (視圖)
- [ ] **Step 2.16**: 完成翻譯 `blade.md` (Blade 樣板)

#### 深入探討

- [ ] **Step 2.17**: 完成翻譯 `contracts.md` (Contracts)
- [ ] **Step 2.18**: 完成翻譯 `context.md` (Context)
- [ ] **Step 2.19**: 完成翻譯 `concurrency.md` (Concurrency)

#### 安全性

- [ ] **Step 2.20**: 完成翻譯 `authentication.md` (驗證)
- [ ] **Step 2.21**: 完成翻譯 `authorization.md` (授權)
- [ ] **Step 2.22**: 完成翻譯 `encryption.md` (加密)
- [ ] **Step 2.23**: 完成翻譯 `hashing.md` (雜湊)

#### 資料庫

- [ ] **Step 2.24**: 完成翻譯 `database.md` (資料庫基礎)
- [ ] **Step 2.25**: 完成翻譯 `queries.md` (Query Builder)
- [ ] **Step 2.26**: 完成翻譯 `pagination.md` (分頁)
- [ ] **Step 2.27**: 完成翻譯 `migrations.md` (遷移)
- [ ] **Step 2.28**: 完成翻譯 `seeding.md` (Seeding)
- [ ] **Step 2.29**: 完成翻譯 `redis.md` (Redis)

#### Eloquent ORM

- [ ] **Step 2.30**: 完成翻譯 `eloquent.md` (Eloquent ORM)
- [ ] **Step 2.31**: 完成翻譯 `eloquent-relationships.md` (Eloquent 關聯)
- [ ] **Step 2.32**: 完成翻譯 `eloquent-collections.md` (Eloquent 集合)
- [ ] **Step 2.33**: 完成翻譯 `eloquent-factories.md` (Eloquent Factories)
- [ ] **Step 2.34**: 完成翻譯 `eloquent-mutators.md` (Eloquent Mutators)
- [ ] **Step 2.35**: 完成翻譯 `eloquent-resources.md` (Eloquent Resources)
- [ ] **Step 2.36**: 完成翻譯 `eloquent-serialization.md` (Eloquent Serialization)

#### 測試

- [ ] **Step 2.37**: 完成翻譯 `testing.md` (測試概論)
- [ ] **Step 2.38**: 完成翻譯 `http-tests.md` (HTTP 測試)
- [ ] **Step 2.39**: 完成翻譯 `console-tests.md` (Console 測試)
- [ ] **Step 2.40**: 完成翻譯 `database-testing.md` (資料庫測試)
- [ ] **Step 2.41**: 完成翻譯 `dusk.md` (Dusk)

#### 其他

- [ ] **Step 2.42**: 完成翻譯 `artisan.md` (Artisan Console)
- [ ] **Step 2.43**: 完成翻譯 `broadcasting.md` (廣播)
- [ ] **Step 2.44**: 完成翻譯 `cache.md` (快取)
- [ ] **Step 2.45**: 完成翻譯 `collections.md` (集合)
- [ ] **Step 2.46**: 完成翻譯 `events.md` (事件)
- [ ] **Step 2.47**: 完成翻譯 `filesystem.md` (檔案儲存)
- [ ] **Step 2.48**: 完成翻譯 `helpers.md` (輔助函式)
- [ ] **Step 2.49**: 完成翻譯 `mail.md` (郵件)
- [ ] **Step 2.50**: 完成翻譯 `notifications.md` (通知)
- [ ] **Step 2.51**: 完成翻譯 `queues.md` (佇列)
- [ ] **Step 2.52**: 完成翻譯 `scheduling.md` (排程)

#### 官方套件

- [ ] **Step 2.53**: 完成翻譯所有官方套件文件 (billing, cashier-paddle, envoy, errors, folio, fortify, frontend, homestead, horizon, http-client, license, localization, logging, mcp, mix, mocking, mongodb, octane, packages, passport, passwords, pennant, pint, precognition, processes, prompts, pulse, rate-limiting, readme, redirects, reverb, sail, sanctum, scout, socialite, starter-kits, strings, telescope, upgrade, urls, valet, validation, verification, vite, contributions, deployment, documentation)

#### API

- [ ] **Step 2.54**: 完成翻譯 `api.md` (API 文件)

## 6. 輸出驗證 (Output Verification)

翻譯完成後，請執行以下檢查：

- [ ] **格式檢查**：確認所有 Markdown 標題 (`#`), 列表 (`-`), 引用 (`>`) 格式正確且未跑版。
- [ ] **連結檢查**：確認內部連結 (Relative Links) 依然有效，且沒有錯誤地被翻譯成中文檔名（檔名保持英文）。
- [ ] **程式碼完整性**：隨機抽查 5-10 個檔案，確認程式碼區塊完全未被更動。
- [ ] **構建驗證**：執行 `npm run build` 確認所有頁面可以正常生成。

## 7. 錯誤處理 (Error Handling)

- 若遇到無法確定的術語，請在 `TRANSLATION_NOTES.md` 中標記並保留原文，等待人工確認。
- 若文件過長導致 Context Window 限制，請將單一檔案拆分為 `Part 1`, `Part 2` 處理後再合併。

---

## ✅ 完成狀態

**所有翻譯任務尚未完成，需要繼續努力！**
