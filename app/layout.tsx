import type { Metadata } from "next";
import { Geist_Mono, Inter } from "next/font/google";
import localFont from "next/font/local";
import "./globals.css";
import { ThemeProvider } from "@/components/theme-provider";

const genryuSans = localFont({
  variable: "--font-genryu",
  display: "swap",
  src: [
    { path: "../public/genryu/GenRyuMinTW-EL-01.woff2", weight: "200", style: "normal" },
    { path: "../public/genryu/GenRyuMinTW-L-01.woff2", weight: "300", style: "normal" },
    { path: "../public/genryu/GenRyuMinTW-R-01.woff2", weight: "400", style: "normal" },
    { path: "../public/genryu/GenRyuMinTW-M-01.woff2", weight: "500", style: "normal" },
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

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
});

export const metadata: Metadata = {
  title: "Laravel 12 中文文檔 - PHP Web 框架",
  description: "Laravel 12 官方文檔的正體中文翻譯。Laravel 是為 Web 工匠打造的 PHP 框架，提供優雅的語法和強大的功能。",
  keywords: ["Laravel", "Laravel 12", "PHP", "Web 框架", "中文文檔"],
  authors: [{ name: "Laravel Taiwan Community" }],
  openGraph: {
    type: "website",
    locale: "zh_TW",
    url: "https://laravel12-zh-tw.hulstem.com",
    title: "Laravel 12 中文文檔",
    description: "Laravel 12 官方文檔的正體中文翻譯",
    siteName: "Laravel 12 中文",
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
    description: "Laravel 12 官方文檔的正體中文翻譯",
    images: ["/og-image.png"],
  },
  alternates: {
    canonical: "https://laravel12-zh-tw.hulstem.com",
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
        className={`${genryuSans.variable} ${inter.variable} ${geistMono.variable} antialiased`}
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
              } catch (e) { }
            }.toString()})();`,
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
