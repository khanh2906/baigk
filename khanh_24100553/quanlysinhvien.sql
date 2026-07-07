CREATE DATABASE QuanLySinhVien;
USE QuanLySinhVien;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_code VARCHAR(20) NOT NULL UNIQUE,
    full_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    birth_date DATE,
    email VARCHAR(100),
    phone VARCHAR(20),
    address VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO students
(student_code, full_name, gender, birth_date, email, phone, address)
VALUES
('SV001', 'Nguyen Van A', 'Nam', '2004-01-15', '[email protected]', '0123456789', 'Ha Noi'),
('SV002', 'Tran Thi B', 'Nu', '2004-05-20', '[email protected]', '0987654321', 'Hai Phong'),
('SV003', 'Le Van C', 'Nam', '2004-07-10', '[email protected]', '0111222333', 'Da Nang');