DROP DATABASE IF EXISTS farm_story;
CREATE DATABASE farm_story;
USE farm_story;

-- Terms 테이블 생성
CREATE TABLE Terms (
    term_id INT AUTO_INCREMENT PRIMARY KEY,
    term_content1 TEXT NOT NULL,
    term_content2 TEXT NOT NULL
);

-- User 테이블 생성
CREATE TABLE User (
    uid VARCHAR(50) PRIMARY KEY,
    pass CHAR(64) NOT NULL,
    name VARCHAR(20) NOT NULL,
    nick VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(50),
    hp CHAR(13),
    grade VARCHAR(10),
    addr VARCHAR(100),
    regip VARCHAR(20),
    regdate DATETIME DEFAULT NOW()
);

-- Article 테이블 생성
CREATE TABLE Article (
    no INT AUTO_INCREMENT PRIMARY KEY,
    user_uid VARCHAR(50),
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    regdate DATETIME DEFAULT NOW(),
    views INT DEFAULT 0,
    `group` VARCHAR(20),
    cate VARCHAR(20),
    FOREIGN KEY (user_uid) REFERENCES User(uid)
);

-- ArticleFile 테이블 생성
CREATE TABLE ArticleFile (
    id INT AUTO_INCREMENT PRIMARY KEY,
    origin_name VARCHAR(100),
    stored_name VARCHAR(100),
    regdate DATETIME DEFAULT NOW(),
    article_no INT,
    FOREIGN KEY (article_no) REFERENCES Article(no)
);

-- Product 테이블 생성
CREATE TABLE Product (
    no INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(20) NOT NULL,
    price INT DEFAULT 0 NOT NULL,
    point INT DEFAULT 0 NOT NULL,
    discount INT DEFAULT 0 NOT NULL,
    delivery_fee INT DEFAULT 0 NOT NULL,
    stack INT DEFAULT 0 NOT NULL,
    thumb_img VARCHAR(100),
    info_img VARCHAR(100) NOT NULL,
    explain_img VARCHAR(100) NOT NULL,
    regdate DATETIME DEFAULT NOW(),
    etc TEXT
);

-- Order 테이블 생성
CREATE TABLE `Order` (
    no INT AUTO_INCREMENT PRIMARY KEY,
    product_no INT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    product_price INT NOT NULL,
    count INT DEFAULT 1,
    product_delivery_fee INT NOT NULL,
    total_price INT NOT NULL,
    user_id VARCHAR(50) NOT NULL,
    receiver VARCHAR(20) NOT NULL,
    receive_addr VARCHAR(100) NOT NULL,
    FOREIGN KEY (product_no) REFERENCES Product(no),
    FOREIGN KEY (user_id) REFERENCES User(uid)
);


-- 테이블 데이터 farm_story.article:~1 rows  내보내기
INSERT INTO `article` (`no`, `user_uid`, `title`, `content`, `regdate`, `views`, 'group',`cate`) VALUES
	(1, 'user1', 'title1', 'content1', '2024-08-27 14:08:49', 10,'croptalk', 'story');

-- 테이블 데이터 farm_story.articlefile:~1 rows  내보내기
INSERT INTO `articlefile` (`id`, `origin_name`, `stored_name`, `regdate`, `article_no`) VALUES
	(1, 'name1', 'name1', '2024-08-27 14:13:07', 1);

-- 테이블 데이터 farm_story.order:~1 rows  내보내기
INSERT INTO `order` (`no`, `product_no`, `product_name`, `product_price`, `count`, `product_delivery_fee`, `total_price`, `user_id`, `receiver`, `receive_addr`) VALUES
	(1, 1, 'productName1', 1000, 1, 500, 1500, 'user1', 'user2', 'addr1');

-- 테이블 데이터 farm_story.product:~1 rows  내보내기
INSERT INTO `product` (`no`, `name`, `type`, `price`, `point`, `discount`, `delivery_fee`, `stack`, `thumb_img`, `info_img`, `explain_img`, `regdate`) VALUES
	(1, 'product1', 'type1', 1000, 100, 10, 500, 50, 'img1', 'img2', 'img3', '2024-08-27 14:11:58');

-- 테이블 데이터 farm_story.user:~1 rows  내보내기
INSERT INTO `user` (`uid`, `pass`, `name`, `nick`, `email`, `hp`, `grade`, `addr`, `regip`, `regdate`) VALUES
	('user1', '1234', 'name1', 'nick1', 'email1', NULL, NULL, NULL, NULL, '2024-08-27 14:09:30');
	
-- 관리자 데이터 삽임 (uid:admin / pass:admin1234!)
INSERT INTO `user` (`uid`, `pass`, `name`, `nick`, `email`, `hp`, `grade`, `addr`, `regip`, `regdate`, `isAdmin`) VALUES ('admin', 'b0d107a1cb94cd60c513a8636f99b8d700154887e2a96f0310a1b5f3e60a6ddd', '관리자', '관리자', 'woo24465@gmail.com', '010-1234-0001', NULL, NULL, '0:0:0:0:0:0:0:1', '2024-08-28 15:14:38', 1);

	

