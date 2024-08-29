DROP DATABASE IF EXISTS farm_story;
CREATE DATABASE farm_story;
USE farm_story;

-- Terms 테이블 생성
CREATE TABLE Terms (
    term_id INT AUTO_INCREMENT PRIMARY KEY,
    term_content1 TEXT NOT NULL,
    term_content2 TEXT NOT NULL,
    FOREIGN KEY (user_uid) REFERENCES User(uid) ON DELETE CASCADE;
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
    regdate DATETIME DEFAULT NOW(),
    isAdmin INT DEFAULT 0
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
    FOREIGN KEY (user_uid) REFERENCES User(uid) ON DELETE CASCADE
);

-- ArticleFile 테이블 생성
CREATE TABLE ArticleFile (
    id INT AUTO_INCREMENT PRIMARY KEY,
    origin_name VARCHAR(100),
    stored_name VARCHAR(100),
    regdate DATETIME DEFAULT NOW(),
    article_no INT,
    FOREIGN KEY (article_no) REFERENCES Article(no) ON DELETE CASCADE
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
    info_img VARCHAR(100),
    explain_img VARCHAR(100),
    regdate DATETIME DEFAULT NOW(),
    etc TEXT,
    user_uid VARCHAR(50) NOT NULL,
    FOREIGN KEY (user_uid) REFERENCES User(uid) ON DELETE CASCADE
);

-- Order 테이블 생성
CREATE TABLE `Order` (
    no INT AUTO_INCREMENT PRIMARY KEY,
    product_no INT NOT NULL,
    user_id VARCHAR(50) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    product_price INT NOT NULL,
    count INT DEFAULT 1,
    product_delivery_fee INT NOT NULL,
    total_price INT NOT NULL,
    receiver VARCHAR(20) NOT NULL,
    receive_addr VARCHAR(100) NOT NULL,
    FOREIGN KEY (product_no) REFERENCES Product(no) ON DELETE CASCADE, 
    FOREIGN KEY (user_id) REFERENCES User(uid) ON DELETE CASCADE
);
