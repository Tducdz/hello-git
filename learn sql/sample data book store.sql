use book_store;

INSERT INTO Authors (name, birth_date) VALUES
('Nguyễn Nhật Ánh', '1955-05-07'),
('Nam Cao', '1917-10-29'),
('Tô Hoài', '1920-09-27'),
('Xuân Quỳnh', '1942-10-06'),
('Nguyễn Du', '1766-01-03');

INSERT INTO Books (title, published_year, price, author_id) VALUES
('Cho tôi xin một vé đi tuổi thơ', 2008, 85000, 1),
('Lão Hạc', 1943, 60000, 2),
('Dế Mèn phiêu lưu ký', 1941, 75000, 3),
('Thuyền và biển', 1980, 50000, 4),
('Truyện Kiều', 1920, 100000, 5);

INSERT INTO Customers (full_name, email, phone, addresss) VALUES
('Trần Văn A', 'a@gmail.com', '0935467365', 'Hà Nội'),
('Nguyễn Thị B', 'b@gmail.com', '0986452733', 'TP.HCM'),
('Lê Văn C', 'c@gmail.com', '0976543256', 'Đà Nẵng'),
('Phạm Thị D', 'd@gmail.com', '0912354321', 'Cần Thơ'),
('Hoàng Văn E', 'e@gmail.com', '0987898453', 'Hải Phòng');


INSERT INTO Orders (customer_id, order_date, status) VALUES
(1, '2025-09-01 10:30:00', 'pending'),
(2, '2025-09-02 14:00:00', 'shipped'),
(3, '2025-09-03 09:15:00', 'delivered'),
(4, '2025-09-04 20:45:00', 'cancelled'),
(5, '2025-09-05 16:20:00', 'pending'),
(6, '2025-09-10 17:17:00', 'pending');

INSERT INTO Order_Details (order_id, book_id, quantity, unit_price) VALUES
(1, 1, 2, 85000),
(2, 2, 1, 120000),
(3, 3, 1, 150000),
(4, 4, 3, 90000),
(5, 5, 1, 130000),
(6, 1, 1, 85000);
