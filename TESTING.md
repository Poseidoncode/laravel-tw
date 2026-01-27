# 測試文檔

## 測試概覽

Laravel 中文文檔網站採用現代化的測試策略，結合單元測試、整合測試和端到端測試，確保程式碼品質和功能正確性。

## 測試類型

### 1. 單元測試 (Unit Tests)

針對個別函數和元件進行測試，驗證其邏輯正確性。

#### 測試目標
- **工具函數**: `lib/utils.ts` 中的輔助函數
- **資料處理**: `lib/docs.tsx` 中的文檔處理邏輯
- **元件邏輯**: React 元件的內部狀態和行為

#### 測試框架
```bash
npm install --save-dev jest @testing-library/react @testing-library/jest-dom
```

### 2. 整合測試 (Integration Tests)

測試元件之間的互動和資料流程。

#### 測試目標
- **文檔載入流程**: 從 MDX 檔案到 React 元件的完整流程
- **導航功能**: 側邊欄導航和路由切換
- **主題切換**: 深色/明亮模式切換功能

### 3. 端到端測試 (E2E Tests)

模擬真實使用者行為，測試完整功能流程。

#### 測試目標
- **文檔瀏覽**: 從首頁到具體文檔頁面的完整流程
- **搜尋功能**: Pagefind 搜尋功能的可用性
- **響應式設計**: 在不同裝置尺寸下的顯示效果

#### E2E 測試框架
```bash
npm install --save-dev playwright
```

## 測試環境設定

### Jest 配置

建立 `jest.config.js`:

```javascript
const nextJest = require('next/jest')

const createJestConfig = nextJest({
  // Provide the path to your Next.js app to load next.config.js and .env files
  dir: './',
})

// Add any custom config to be passed to Jest
const customJestConfig = {
  setupFilesAfterEnv: ['<rootDir>/jest.setup.js'],
  moduleNameMapping: {
    // Handle module aliases (this will be automatically configured for you based on your tsconfig.json paths)
    '^@/(.*)$': '<rootDir>/$1',
  },
  testEnvironment: 'jest-environment-jsdom',
}

// createJestConfig is exported this way to ensure that next/jest can load the Next.js config which is async
module.exports = createJestConfig(customJestConfig)
```

### Jest 設定檔案 (jest.setup.js)

```javascript
import '@testing-library/jest-dom'
```

### Playwright 配置

建立 `playwright.config.ts`:

```typescript
import { defineConfig, devices } from '@playwright/test'

export default defineConfig({
  testDir: './e2e',
  fullyParallel: true,
  forbidOnly: !!process.env.CI,
  retries: process.env.CI ? 2 : 0,
  workers: process.env.CI ? 1 : undefined,
  reporter: 'html',
  use: {
    baseURL: 'http://localhost:3000',
    trace: 'on-first-retry',
  },
  projects: [
    {
      name: 'chromium',
      use: { ...devices['Desktop Chrome'] },
    },
    {
      name: 'firefox',
      use: { ...devices['Desktop Firefox'] },
    },
    {
      name: 'webkit',
      use: { ...devices['Desktop Safari'] },
    },
  ],
  webServer: {
    command: 'npm run dev',
    url: 'http://localhost:3000',
    reuseExistingServer: !process.env.CI,
  },
})
```

## 測試案例範例

### 單元測試範例

#### 測試文檔處理函數

```typescript
// __tests__/lib/docs.test.ts
import { getDocBySlug, getAllDocs } from '@/lib/docs'
import fs from 'fs'

// Mock fs module
jest.mock('fs')
const mockedFs = fs as jest.Mocked<typeof fs>

describe('getDocBySlug', () => {
  beforeEach(() => {
    mockedFs.existsSync.mockReturnValue(true)
    mockedFs.readFileSync.mockReturnValue(`
---
title: "測試文檔"
description: "這是一個測試文檔"
---

# 測試標題

這是測試內容。
    `.trim())
  })

  it('應該正確解析 MDX 文檔', async () => {
    const result = await getDocBySlug('test')

    expect(result).toBeDefined()
    expect(result?.frontmatter.title).toBe('測試文檔')
    expect(result?.frontmatter.description).toBe('這是一個測試文檔')
    expect(result?.toc).toHaveLength(1)
    expect(result?.toc[0].text).toBe('測試標題')
  })

  it('應該在文檔不存在時返回 null', async () => {
    mockedFs.existsSync.mockReturnValue(false)

    const result = await getDocBySlug('nonexistent')

    expect(result).toBeNull()
  })
})
```

#### 測試 React 元件

```typescript
// __tests__/components/mode-toggle.test.tsx
import { render, screen, fireEvent } from '@testing-library/react'
import { ModeToggle } from '@/components/mode-toggle'
import { ThemeProvider } from 'next-themes'

const renderWithTheme = (component: React.ReactElement) => {
  return render(
    <ThemeProvider attribute="class" defaultTheme="light">
      {component}
    </ThemeProvider>
  )
}

describe('ModeToggle', () => {
  it('應該渲染主題切換按鈕', () => {
    renderWithTheme(<ModeToggle />)

    const button = screen.getByRole('button', { name: /切換主題/i })
    expect(button).toBeInTheDocument()
  })

  it('應該在點擊時切換主題', () => {
    renderWithTheme(<ModeToggle />)

    const button = screen.getByRole('button', { name: /切換主題/i })

    // 初始狀態應為明亮主題
    expect(document.documentElement).not.toHaveClass('dark')

    // 點擊切換到深色主題
    fireEvent.click(button)
    expect(document.documentElement).toHaveClass('dark')

    // 再次點擊切換回明亮主題
    fireEvent.click(button)
    expect(document.documentElement).not.toHaveClass('dark')
  })
})
```

### 整合測試範例

```typescript
// __tests__/integration/docs-rendering.test.tsx
import { render, screen, waitFor } from '@testing-library/react'
import { DocsPage } from '@/app/docs/[slug]/page'
import { getDocBySlug } from '@/lib/docs'

// Mock the getDocBySlug function
jest.mock('@/lib/docs')
const mockedGetDocBySlug = getDocBySlug as jest.MockedFunction<typeof getDocBySlug>

describe('文檔頁面渲染', () => {
  beforeEach(() => {
    mockedGetDocBySlug.mockResolvedValue({
      slug: 'test',
      content: <div>測試內容</div>,
      frontmatter: {
        title: '測試文檔',
        description: '測試描述',
      },
      toc: [
        { id: 'section-1', text: '章節 1', level: 2 },
      ],
    })
  })

  it('應該正確渲染文檔內容和目錄', async () => {
    render(<DocsPage params={{ slug: 'test' }} />)

    // 等待內容載入
    await waitFor(() => {
      expect(screen.getByText('測試內容')).toBeInTheDocument()
    })

    // 檢查標題是否正確顯示
    expect(screen.getByRole('heading', { name: '測試文檔' })).toBeInTheDocument()

    // 檢查目錄是否生成
    expect(screen.getByRole('link', { name: '章節 1' })).toBeInTheDocument()
  })
})
```

### 端到端測試範例

```typescript
// e2e/docs-navigation.spec.ts
import { test, expect } from '@playwright/test'

test.describe('文檔導航', () => {
  test('應該能夠從首頁導航到特定文檔', async ({ page }) => {
    // 訪問首頁
    await page.goto('/')

    // 點擊側邊欄中的安裝連結
    await page.getByRole('link', { name: '安裝' }).click()

    // 等待頁面載入
    await page.waitForURL('**/docs/installation')

    // 檢查頁面標題
    await expect(page.getByRole('heading', { name: '安裝' })).toBeVisible()

    // 檢查內容區域存在
    await expect(page.locator('[data-testid="doc-content"]')).toBeVisible()
  })

  test('搜尋功能應該正常工作', async ({ page }) => {
    await page.goto('/')

    // 在搜尋框中輸入關鍵字
    await page.getByPlaceholder('搜尋文檔...').fill('路由')

    // 等待搜尋結果出現
    await page.waitForSelector('[data-testid="search-results"]')

    // 檢查搜尋結果
    await expect(page.getByText('路由')).toBeVisible()

    // 點擊搜尋結果
    await page.getByRole('link', { name: '路由' }).click()

    // 檢查是否跳轉到正確頁面
    await page.waitForURL('**/docs/routing')
    await expect(page.getByRole('heading', { name: '路由' })).toBeVisible()
  })
})

test.describe('主題切換', () => {
  test('應該能夠切換深色和明亮主題', async ({ page }) => {
    await page.goto('/')

    // 檢查初始主題
    await expect(page.locator('html')).not.toHaveClass('dark')

    // 點擊主題切換按鈕
    await page.getByRole('button', { name: '切換主題' }).click()

    // 檢查主題是否切換
    await expect(page.locator('html')).toHaveClass('dark')

    // 再次點擊切換回來
    await page.getByRole('button', { name: '切換主題' }).click()
    await expect(page.locator('html')).not.toHaveClass('dark')
  })
})
```

## 測試執行

### 本地測試執行

```bash
# 執行所有測試
npm test

# 執行單元測試
npm run test:unit

# 執行整合測試
npm run test:integration

# 執行 E2E 測試
npm run test:e2e

# 執行特定測試檔案
npm test -- __tests__/lib/docs.test.ts

# 監視模式
npm run test:watch
```

### CI/CD 測試

#### GitHub Actions 配置

```yaml
# .github/workflows/test.yml
name: Tests

on:
  push:
    branches: [ main, develop ]
  pull_request:
    branches: [ main ]

jobs:
  test:
    runs-on: ubuntu-latest

    strategy:
      matrix:
        node-version: [18.x, 20.x]

    steps:
    - uses: actions/checkout@v4

    - name: Use Node.js ${{ matrix.node-version }}
      uses: actions/setup-node@v4
      with:
        node-version: ${{ matrix.node-version }}
        cache: 'npm'

    - name: Install dependencies
      run: npm ci

    - name: Run linting
      run: npm run lint

    - name: Run type checking
      run: npm run type-check

    - name: Run unit tests
      run: npm test

    - name: Run integration tests
      run: npm run test:integration

  e2e:
    runs-on: ubuntu-latest
    needs: test

    steps:
    - uses: actions/checkout@v4

    - name: Use Node.js 20.x
      uses: actions/setup-node@v4
      with:
        node-version: 20.x
        cache: 'npm'

    - name: Install dependencies
      run: npm ci

    - name: Install Playwright browsers
      run: npx playwright install --with-deps

    - name: Run E2E tests
      run: npm run test:e2e

    - uses: actions/upload-artifact@v4
      if: always()
      with:
        name: playwright-report
        path: playwright-report/
        retention-days: 30
```

## 測試覆蓋率

### 覆蓋率配置

```javascript
// jest.config.js
module.exports = {
  // ... 其他配置
  collectCoverageFrom: [
    '**/*.{js,jsx,ts,tsx}',
    '!**/*.d.ts',
    '!**/node_modules/**',
    '!**/.next/**',
    '!**/out/**',
    '!**/public/**',
  ],
  coverageDirectory: 'coverage',
  coverageReporters: ['text', 'lcov', 'html'],
  coverageThreshold: {
    global: {
      branches: 80,
      functions: 80,
      lines: 80,
      statements: 80,
    },
  },
}
```

### 覆蓋率報告

```bash
# 生成覆蓋率報告
npm test -- --coverage

# 查看 HTML 報告
open coverage/lcov-report/index.html
```

## 測試最佳實踐

### 測試命名慣例

```typescript
// 好的命名
describe('getDocBySlug', () => {
  it('應該在文檔存在時返回文檔物件', () => {
    // ...
  })

  it('應該在文檔不存在時返回 null', () => {
    // ...
  })
})

// 不好的命名
describe('function', () => {
  it('works', () => {
    // ...
  })
})
```

### Mock 策略

```typescript
// Mock 外部依賴
jest.mock('@/lib/docs', () => ({
  getDocBySlug: jest.fn(),
}))

// Mock Next.js router
jest.mock('next/router', () => ({
  useRouter: () => ({
    push: jest.fn(),
    query: {},
  }),
}))
```

### 測試資料管理

```typescript
// 測試資料工廠
const createMockDoc = (overrides = {}) => ({
  slug: 'test',
  content: <div>Test content</div>,
  frontmatter: {
    title: 'Test Doc',
    description: 'Test description',
  },
  toc: [],
  ...overrides,
})

// 在測試中使用
const mockDoc = createMockDoc({ slug: 'custom-slug' })
```

## 效能測試

### Lighthouse CI

```yaml
# 效能測試
- name: Run Lighthouse
  uses: treosh/lighthouse-ci-action@v10
  with:
    urls: https://laravel-tw.vercel.app
    configPath: .lighthouserc.json
```

### Lighthouse 配置

```json
// .lighthouserc.json
{
  "ci": {
    "collect": {
      "numberOfRuns": 3,
      "startServerCommand": "npm run start",
      "url": ["http://localhost:3000"]
    },
    "assert": {
      "assertions": {
        "categories:performance": "error",
        "categories:accessibility": "error",
        "categories:best-practices": "error",
        "categories:seo": "error"
      }
    }
  }
}
```

## 持續整合

### 品質門檻

- **測試覆蓋率**: 最低 80%
- **Lighthouse 效能分數**: 最低 90
- **ESLint**: 零錯誤
- **TypeScript**: 零類型錯誤

### 自動化檢查

```bash
# package.json 腳本
{
  "scripts": {
    "quality-check": "npm run lint && npm run type-check && npm run test -- --coverage --watchAll=false",
    "pre-commit": "npm run quality-check",
    "pre-push": "npm run test:e2e"
  }
}
```

## 疑難排解

### 常見測試問題

#### 測試超時

```typescript
// 增加超時時間
it('應該處理大型文檔', async () => {
  // ... 測試程式碼
}, 10000) // 10 秒超時
```

#### 非同步測試

```typescript
// 正確處理非同步操作
it('應該載入文檔', async () => {
  const result = await getDocBySlug('test')
  expect(result).toBeDefined()
})
```

#### DOM 測試

```typescript
// 使用 act 包裝狀態更新
import { act } from '@testing-library/react'

it('應該更新狀態', () => {
  act(() => {
    // 觸發狀態更新
  })

  expect(screen.getByText('更新後的內容')).toBeInTheDocument()
})
```

## 測試維護

### 重構測試

當程式碼重構時，測試也需要相應更新：

1. **識別受影響的測試**
2. **更新測試斷言**
3. **檢查測試覆蓋率**
4. **執行完整測試套件**

### 測試債務管理

定期審查和清理測試：

- **移除過時測試**
- **合併重複測試**
- **優化慢速測試**
- **更新測試文檔**