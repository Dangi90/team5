DROP DATABASE IF EXISTS farm_story;
CREATE DATABASE farm_story;
USE farm_story;

-- Terms 테이블 생성
CREATE TABLE Terms (
    term_id INT AUTO_INCREMENT PRIMARY KEY,
    term_content TEXT NOT NULL
);

-- User 테이블 생성
CREATE TABLE user (
    uid VARCHAR(50) PRIMARY KEY,
    pass CHAR(64) NOT NULL,
    name VARCHAR(20) NOT NULL,
    nick VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(50),
    hp CHAR(11),
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
    price INT DEFAULT 0,
    point INT DEFAULT 0,
    discount INT DEFAULT 0,
    delivery_fee INT DEFAULT 0,
    stack INT DEFAULT 0,
    thumb_img VARCHAR(100) NOT NULL,
    info_img VARCHAR(100) NOT NULL,
    explain_img VARCHAR(100) NOT NULL,
    regdate DATETIME DEFAULT NOW()
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
