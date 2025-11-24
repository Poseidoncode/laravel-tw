import Link from "next/link"
import { Button } from "@/components/ui/button"

export default function Home() {
  return (
    <div className="flex flex-col items-center justify-center min-h-screen py-2 bg-background text-foreground">
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
    </div>
  )
}
