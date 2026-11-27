import type { Metadata } from "next";
import Link from "next/link";
import "./globals.css";

export const metadata: Metadata = {
  title: "Quản lý Thiết bị Nội bộ V2 - Nhóm 5",
  description: "Dự án tự code - Chuyên đề 2",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="vi">
      <body className="bg-slate-50 text-slate-900 min-h-screen">
        {/* Thanh menu don gian */}
        <nav className="bg-white border-b border-slate-200 px-6 py-4 flex items-center justify-between">
          <div className="font-bold text-lg text-blue-600">
            Quản lý Thiết bị V2
          </div>
          <div className="flex gap-6 text-sm font-medium">
            <Link href="/" className="hover:text-blue-600 transition">
              Quản lý Thiết bị
            </Link>
            <Link href="/requests" className="hover:text-blue-600 transition">
              Quản lý Mượn / Trả
            </Link>
          </div>
        </nav>

        <main className="max-w-6xl mx-auto p-6">{children}</main>
      </body>
    </html>
  );
}
