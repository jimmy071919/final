DROP DATABASE IF EXISTS webDB;
CREATE DATABASE webDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

use webDB; # 使用資料庫
DROP table if exists member ; # 資料表名稱
create table member (
	member_id VARCHAR(5) NOT null,  
    username VARCHAR(10) NOT NULL,
    password VARCHAR(20) NOT NULL,
    name VARCHAR(10) NOT NULL,
    tel VARCHAR(10) NOT NULL, 
	address VARCHAR(45) NOT NULL, 
    gender VARCHAR(2) NOT NULL, 
    birth DATE NOT NULL,
    PRIMARY KEY (member_id)
);
-- INSERT INTO member VALUES ('1001','侯有容','A231847591','0975405998','桃園市中壢區中北路72號');
-- INSERT INTO member VALUES ('1002','陳冠豪','A131847591','0912345678','桃園市中壢區中北路70號');
-- INSERT INTO member VALUES ('1003','朱品慈','H234567890','0934567890','桃園市中壢區中北路1號');



DROP TABLE IF EXISTS product; -- Corrected syntax
CREATE TABLE product (
    product_id VARCHAR(5) NOT NULL,  
    product_name VARCHAR(10) NOT NULL,
    amount INT not null,
    category VARCHAR(5) NOT NULL, 
    price INT NOT NULL, 
    PRIMARY KEY (product_id)
); 
#蒸餾酒
INSERT INTO product VALUES ('s001','白蘭地','50','蒸餾酒','1200');
INSERT INTO product VALUES ('s002','威士忌','30','蒸餾酒','1500');
INSERT INTO product VALUES ('s003','伏特加','100','蒸餾酒','1389');
INSERT INTO product VALUES ('s004','琴酒','100','蒸餾酒','1450');
INSERT INTO product VALUES ('s005','龍舌蘭','100','蒸餾酒','1350');

#釀造酒
INSERT INTO product VALUES ('b001','日本清酒','100','釀造酒','2300');
INSERT INTO product VALUES ('b002','紅酒','100','釀造酒','1900');
INSERT INTO product VALUES ('b003','白酒','100','釀造酒','800');
INSERT INTO product VALUES ('b004','梅酒','100','釀造酒','500');
INSERT INTO product VALUES ('b005','米酒','100','釀造酒','500');
#合成酒
INSERT INTO product VALUES ('c001','香檳','100','合成酒','2300');
INSERT INTO product VALUES ('c002','氣泡酒','100','合成酒','1900');
INSERT INTO product VALUES ('c003','玫瑰酒','100','合成酒','1000');
INSERT INTO product VALUES ('c004','常常酒酒','100','合成酒','999999');


DROP TABLE IF EXISTS order_form; -- Corrected syntax
CREATE TABLE order_form (
    order_id VARCHAR(5) NOT NULL,  
    product_id VARCHAR(5) NOT NULL,
    member_id VARCHAR(5) NOT NULL, 
    price INT NOT NULL, 
    quan INT not null,
    pay_way VARCHAR(8),
    receiver_name VARCHAR(8),
    receiver_address VARCHAR(40),
    receiver_tel VARCHAR(10),
    PRIMARY KEY (order_id)
);



DROP TABLE IF EXISTS message; -- Corrected syntax
CREATE TABLE message (
    msg_id VARCHAR(8) NOT NULL,  
    msg_title VARCHAR(5) NOT NULL,
    msg_content VARCHAR(5) NOT NULL, 
    msg_date date not null,
    member_id VARCHAR(5),
    PRIMARY KEY (msg_id)
);

select*from member;
select*from product;
select*from message;
select*from order_form;

