# Quản lý Thiết bị Nội bộ (V2 - Tự code tay)

Dự án Chuyên đề 2 — Nhóm 5:
- **Trương Đàm Công Quý:** Module 1 - Quản lý Thiết bị (CRUD)
- **Tạ Thanh Tấn:** Module 2 - Quản lý Mượn / Trả (CRUD)

## Cấu trúc thư mục
- `database/` — File SQL tạo CSDL và dữ liệu mẫu (`quan_ly_thiet_bi.sql`)
- `backend/` — Spring Boot 3 (Java 17) + MySQL
  - `entity/` — Các bảng CSDL (`@Entity`)
  - `repository/` — Giao tiếp DB (`JpaRepository`)
  - `service/` — Xử lý logic (tùy chọn)
  - `controller/` — REST API (`@RestController`)
- `frontend/` — Next.js 14 + TypeScript + Tailwind CSS
  - `src/app/page.tsx` — Trang Quản lý Thiết bị (Quý)
  - `src/app/requests/page.tsx` — Trang Quản lý Mượn/Trả (Tấn)
  - `src/components/`, `src/services/`, `src/types/`

## Hướng dẫn chạy Local (sau khi clone)

### 1. Bật MySQL & Import Database
- Mở WampServer / XAMPP (đảm bảo MySQL đang chạy ở cổng `3306`, user `root`, password rỗng).
- Vào `phpMyAdmin` → tab **Import** → chọn file `database/quan_ly_thiet_bi.sql` để tạo database `quan_ly_thiet_bi` và dữ liệu mẫu.

### 2. Chạy Backend
- Mở thư mục `v2/backend` bằng IntelliJ IDEA.
- Chạy file `DeviceManagementApplication.java`.
- API chạy tại: `http://localhost:8080`
- Test API qua Swagger UI: `http://localhost:8080/swagger-ui/index.html`

### 3. Chạy Frontend
```bash
cd v2/frontend
npm install
npm run dev
```
- Mở trình duyệt: `http://localhost:3000`
