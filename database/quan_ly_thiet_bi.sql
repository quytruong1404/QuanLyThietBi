-- Tao Database quan_ly_thiet_bi
CREATE DATABASE IF NOT EXISTS quan_ly_thiet_bi
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE quan_ly_thiet_bi;

-- 1. Bang Thiet bi (Module 1 - Truong Dam Cong Quy)
CREATE TABLE IF NOT EXISTS devices (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(150) NOT NULL,
    category VARCHAR(100) NOT NULL,
    status VARCHAR(30) NOT NULL DEFAULT 'AVAILABLE'
);

-- 2. Bang Phieu muon / tra (Module 2 - Ta Thanh Tan)
CREATE TABLE IF NOT EXISTS borrow_requests (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    borrower_name VARCHAR(150) NOT NULL,
    device_id BIGINT NOT NULL,
    borrow_date DATE NOT NULL,
    return_date DATE NULL,
    status VARCHAR(30) NOT NULL DEFAULT 'PENDING',
    CONSTRAINT fk_borrow_device FOREIGN KEY (device_id) REFERENCES devices(id) ON DELETE CASCADE
);

-- Du lieu mau: Thiet bi
INSERT INTO devices (code, name, category, status) VALUES
('TB-001', 'Laptop Dell Latitude 5430', 'Laptop', 'IN_USE'),
('TB-002', 'MacBook Air M2', 'Laptop', 'AVAILABLE'),
('TB-003', 'Man hinh Dell 24 inch', 'Man hinh', 'AVAILABLE'),
('TB-004', 'May in Canon LBP 2900', 'May in', 'MAINTENANCE'),
('TB-005', 'Ban phim co Logitech K845', 'Phu kien', 'AVAILABLE');

-- Du lieu mau: Phieu muon / tra
INSERT INTO borrow_requests (borrower_name, device_id, borrow_date, return_date, status) VALUES
('Nguyen Van An', 1, '2026-11-20', NULL, 'APPROVED'),
('Tran Thi Binh', 2, '2026-11-25', NULL, 'PENDING'),
('Le Minh Cuong', 3, '2026-11-10', '2026-11-15', 'RETURNED');
