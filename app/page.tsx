import Link from "next/link"
import type { Metadata } from "next"
import { Button } from "@/components/ui/button"

export const metadata: Metadata = {
  title: "Laravel 12 中文文檔 - PHP Web 框架",
  description: "Laravel 12 官方文檔的正體中文翻譯。Laravel 是為 Web 工匠打造的 PHP 框架，提供優雅的語法和強大的功能。",
  openGraph: {
    title: "Laravel 12 中文文檔",
    description: "Laravel 12 官方文檔的正體中文翻譯",
    type: "website",
    locale: "zh_TW",
    url: "https://laravel12-zh-tw.hulstem.com",
  },
}

export default function Home() {
  return (
    <div className="flex flex-col items-center justify-between min-h-screen py-2 bg-background text-foreground">
      <div></div>
      <div className="text-center space-y-6">
        <h1 className="text-6xl font-bold tracking-tighter sm:text-7xl">
          Laravel <span className="text-red-600">12</span>
        </h1>
        <p className="text-2xl text-muted-foreground max-w-[600px] mx-auto">
          為 Web 工匠打造的 PHP 框架<br />中文翻譯文檔
        </p>
        <div className="flex justify-center gap-4">
          <Link href="/docs/releases">
            <Button size="lg" className="text-lg px-8">
              開始閱讀
            </Button>
          </Link>
          <Link href="https://laravel.com" target="_blank">
            <Button variant="outline" size="lg" className="text-lg px-8">
              官方網站
            </Button>
          </Link>
        </div>
      </div>

      <footer className="w-full border-t border-muted-foreground/10 bg-background/50 py-6">
        <div className="max-w-3xl mx-auto text-center space-y-1 px-4 text-sm text-muted-foreground">
          <p className="italic">“Come to me, all you who are weary and burdened, and I will give you rest.” (Matthew 11:28)</p>
          <p>凡勞苦擔重擔的人，可以到我這裡來，我就使你們得安息。 （太 11:28）</p>
        </div>
      </footer>
    </div>
  )
}
