import type { Metadata } from "next";
import {  Inter } from "next/font/google";
import localFont from "next/font/local";
import "./globals.css";
import { ThemeProvider } from "@/components/theme-provider";

const genryuSans = localFont({
  variable: "--font-genryu",
  display: "swap",
  src: [
    { path: "../public/genryu/GenRyuMinTW-R-01.woff2", weight: "400", style: "normal" },
    { path: "../public/genryu/GenRyuMinTW-SB-01.woff2", weight: "600", style: "normal" },
    { path: "../public/genryu/GenRyuMinTW-B-01.woff2", weight: "700", style: "normal" },
    { path: "../public/genryu/GenRyuMinTW-H-01.woff2", weight: "800", style: "normal" },
  ],
});

const inter = Inter({
  variable: "--font-inter",
  subsets: ["latin"],
  display: "swap",
});

const rawSiteUrl = process.env.NEXT_PUBLIC_SITE_URL || "https://laravel12-zh-tw.hulstem.com";
const baseUrl = rawSiteUrl.replace(/\/+$/, "");
const siteUrlWithSlash = `${baseUrl}/`;

export const metadata: Metadata = {
  metadataBase: new URL(baseUrl),
  title: "Laravel 12 中文文檔 - PHP Web 框架",
  description: "Laravel 12 官方文檔的繁體中文翻譯。Laravel 是為 Web 工匠打造的 PHP 框架，提供優雅的語法和強大的功能。",
  keywords: ["Laravel", "Laravel 12", "PHP", "Web 框架", "中文文檔"],
  authors: [{ name: "Laravel Taiwan Community" }],
  openGraph: {
    type: "website",
    locale: "zh_TW",
    title: "Laravel 12 中文文檔",
    description: "Laravel 12 官方文檔的繁體中文翻譯",
    siteName: "Laravel 12 繁體中文文檔",
    images: [
      {
        url: "/og-image.png",
        width: 1200,
        height: 630,
        alt: "Laravel 12 中文文檔",
      },
    ],
  },
  twitter: {
    card: "summary_large_image",
    title: "Laravel 12 中文文檔",
    description: "Laravel 12 官方文檔的繁體中文翻譯",
    images: ["/og-image.png"],
  },
  alternates: {
    canonical: "/",
  },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="zh-TW" suppressHydrationWarning>
      <body
        className={`${genryuSans.variable} ${inter.variable} antialiased`}
      >
        <script
            dangerouslySetInnerHTML={{
                __html: `(${function setInitialTheme() {
                  try {
                    const persisted = window.localStorage.getItem('theme')
                    if (typeof persisted === 'string') {
                      if (persisted === 'dark') {
                        document.documentElement.classList.add('dark')
                        document.documentElement.style.colorScheme = 'dark'
                      } else {
                        document.documentElement.classList.remove('dark')
                        document.documentElement.style.colorScheme = 'light'
                      }
                      return
                    }
                    const mql = window.matchMedia('(prefers-color-scheme: dark)')
                    if (mql.matches) {
                      document.documentElement.classList.add('dark')
                      document.documentElement.style.colorScheme = 'dark'
                    } else {
                      document.documentElement.classList.remove('dark')
                      document.documentElement.style.colorScheme = 'light'
                    }
                  } catch (e) {
                    // 靜默處理錯誤，避免阻塞頁面載入
                  }
                }.toString()})();`,
            }}
        />
        <script
            type="application/ld+json"
            dangerouslySetInnerHTML={{
                __html: JSON.stringify({
                    "@context": "https://schema.org",
                    "@type": "WebSite",
                    "name": "Laravel 12 繁體中文文檔",
                    "url": siteUrlWithSlash,
                    "inLanguage": "zh-TW"
                }).replace(/</g, '\\u003c'),
            }}
        />
        <ThemeProvider
          attribute="class"
          defaultTheme="system"
          enableSystem
          disableTransitionOnChange
        >
          {children}
        </ThemeProvider>
      </body>
    </html>
  );
}
