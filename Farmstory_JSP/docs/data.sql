-- Terms 테이블에 샘플 데이터 삽입
INSERT INTO Terms (term_content1, term_content2) VALUES
('서비스 이용 약관 내용1', '개인정보 처리 방침 내용1'),
('서비스 이용 약관 내용2', '개인정보 처리 방침 내용2');

-- User 테이블에 샘플 데이터 삽입 (비밀번호는 SHA-256 해시값 사용)
INSERT INTO User (uid, pass, name, nick, email, hp, grade, addr, regip, regdate) VALUES
('user1', SHA2('a123!', 256), '홍길동', 'hong', 'hong@example.com', '01012345678', 'A', '서울시 강남구', '192.168.0.1', NOW()),
('user2', SHA2('a123!', 256), '김철수', 'kim', 'kim@example.com', '01087654321', 'B', '부산시 해운대구', '192.168.0.2', NOW());

-- 관리자 데이터 삽입 (uid:admin / pass:admin1234!)
INSERT INTO `user` (`uid`, `pass`, `name`, `nick`, `email`, `hp`, `grade`, `addr`, `regip`, `regdate`, `isAdmin`) VALUES 
('admin', SHA2('admin1234!',256), '관리자', '관리자', 'admin@gmail.com', '01012340001', '관리자', NULL, '0:0:0:0:0:0:0:1', '2024-08-28 15:14:38', 1);

-- Article 테이블에 임시 데이터 삽입
INSERT INTO Article (user_uid, title, content, regdate, views, `group`, cate) VALUES
('user1', '첫 번째 게시글', '첫 번째 게시글 내용입니다.', NOW(), 10, '공지사항', '공지'),
('user2', '두 번째 게시글', '두 번째 게시글 내용입니다.', NOW(), 5, '일반글', '일반');

-- ArticleFile 테이블에 샘플 데이터 삽입
INSERT INTO ArticleFile (origin_name, stored_name, regdate, article_no) VALUES
('file1.jpg', 'file1_2024.jpg', NOW(), 1),
('file2.jpg', 'file2_2024.jpg', NOW(), 2);

-- Product 테이블에 샘플 데이터 삽입
INSERT INTO Product (name, type, price, point, discount, delivery_fee, stack, thumb_img, info_img, explain_img, regdate, etc, user_uid) VALUES
('상품1', '전자제품', 100000, 1000, 5000, 2500, 10, 'thumb1.jpg', 'info1.jpg', 'explain1.jpg', NOW(), '기타 정보 1', 'user1'),
('상품2', '가전제품', 200000, 2000, 10000, 5000, 5, 'thumb2.jpg', 'info2.jpg', 'explain2.jpg', NOW(), '기타 정보 2', 'user2');

-- Order 테이블에 샘플 데이터 삽입
INSERT INTO `Order` (product_no, product_name, product_price, count, product_delivery_fee, total_price, receiver, receive_addr) VALUES
(1, '상품1', 100000, 2, 2500, 205000, '홍길동', '서울시 강남구'),
(2, '상품2', 200000, 1, 5000, 205000, '김철수', '부산시 해운대구');
