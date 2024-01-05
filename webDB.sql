DROP DATABASE IF EXISTS webDB;
CREATE DATABASE webDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

use webDB; # 使用資料庫
DROP table if exists member ; # 資料表名稱
create table member (
	member_id VARCHAR(50) NOT null,  
    username VARCHAR(10) NOT NULL,
    password VARCHAR(20) NOT NULL,
    tel VARCHAR(10) NOT NULL, 
	address VARCHAR(45), 
    gender VARCHAR(2) NOT NULL, 
    birth DATE NOT NULL,
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY (member_id)
);
-- INSERT INTO member VALUES ('1001','侯有容','A231847591','0975405998','桃product園市中壢區中北路72號');
-- INSERT INTO member VALUES ('1002','陳冠豪','A131847591','0912345678','桃園市中壢區中北路70號');
-- INSERT INTO member VALUES ('1003','朱品慈','H234567890','0934567890','桃園市中壢區中北路1號');



DROP TABLE IF EXISTS product; -- Corrected syntax
CREATE TABLE product (
    product_id VARCHAR(5) NOT NULL,  
    product_name VARCHAR(10) NOT NULL,
    amount INT not null,
    category VARCHAR(5) NOT NULL, 
    price INT NOT NULL, 
    product_describe varchar(200) DEFAULT NULL,
    image_path VARCHAR(100) DEFAULT NULL,
    PRIMARY KEY (product_id)
); 
INSERT INTO product (product_id, product_name, amount, category, price, product_describe, image_path) VALUES
('1', '蘭姆酒', 50, '蒸餾酒', 1500, '這款酒使用獨家的木炭過濾法，再加上Facundo Bacardi 所研發的獨家配方，使得Bacardi較他牌蘭姆酒更加純淨 ，更具有獨特醇順口味。',null),
('10', '白蘭地', 50, '蒸餾酒', 1200, '帶有春天的茉莉花和水仙花的芬芳香味，接下來有濃郁的無花果香、甜柳橙和梅子香味，而最後有新鮮肉桂粉、奶油蛋捲和太妃糖的香濃.','image/brandy.jpg'),
('11', '威士忌', 30, '蒸餾酒', 1500, '於美國白橡木新桶熟成，非冷凝過濾。身為凱達格蘭威士忌經典風味，蜜餞香氣旋繞，使得厚重的泥煤味輕飄起舞，入口如絲綢般順滑，又因為強烈的熱帶果乾口感，衝擊著口腔，最後口中溢散了梅子香氣，絕不含香精、焦糖、調色劑等添加物.',null),
('12', '伏特加', 100, '蒸餾酒', 1389, '讓您飲用後就如同在帆船時，風吹向你臉頰的清爽感。使用純淨水質與一流穀物精髓製作而成。當您有重要節日需要慶祝時，瑪豎立雅伏特加是您最佳的好伙伴。它能幫助您在社交場合上暖和氣氛，創造出單純的快樂，使人精力充沛.','image/vodka.jpg'),
('13', '琴酒', 100, '蒸餾酒', 1450, '撲鼻的茉莉花芬芳、紅色莓果軟糖的酸甜，再點綴些許白胡椒辛香，入口可以感受到溫順的草本風味及淡淡紅茶韻味，豐沛的花香於喉間迴盪.', 'image/gin.jpg'),
('14', '龍舌蘭', 100, '蒸餾酒', 1350, '以其材料命名，使用龍舌蘭草的莖為原料而製成的蒸餾酒， 是墨西哥原生的酒品。龍舌蘭屬於多肉植物的一種， 外觀長得像巨大的鳳梨，而龍舌蘭的莖又稱為龍舌蘭心（Piña）， 含有大量的糖份，非常適合釀酒.', 'image/tequila.jpg'),
('15', '日本清酒', 50, '釀造酒', 1300, '有別於大多市售清酒，回歸原點，採用費時費工的「生酛」釀造。接近純米大吟釀的55%精米度，較一般純米吟釀柔順細緻的口感、生酛釀造獨有的適度酸味，帶出豐富的旨味。不僅日本料理，適度的酸味和旨味，和中華料理、台菜都相當合拍。夏季冷飲、冬天溫熱，皆能品味到其最佳風味.', NULL),
('16', '奶酒', 30, '釀造酒', 1200, '在極精密的真空霧化方式下，提煉出的高品質鮮奶油，混調愛爾蘭優質威士忌，全天然的成份，絕不加任何添加物.', NULL),
('2', '紅酒', 190, '釀造酒', 1900, '最為出名的葡萄酒品種，在品酒會上， 往往是壓軸的葡萄酒款。 就連號稱紅葡萄之王的卡本內蘇維濃都要閃邊站。 奔放的水果香氣伴隨濃濃的香料味，加上厚重的酒體， 你很難忽略它的存在.', 'image/red.jpg'),
('3', '白酒', 199, '釀造酒', 800, '帶有金銀花、杏子和芒果的香氣。清新平衡，礦物氣息餘味悠長。兼具純淨簡約與柔軟圓潤的質感.', 'image/white.jpg'),
('4', '梅酒', 100, '釀造酒', 500, '100%使用一顆顆細心手摘的紀州「南高梅」，遵循古法傾心釀漬的本格梅酒。以原酒(不兌水調整)風貌封存瓶中，突顯南高梅獨特的芳醇梅香及濃醇口感，使品飲方式更為多樣。無論加冰塊直飲、兌冷水、溫熱飲用，最推薦加入蘇打水倍添爽快感，或作為雞尾酒基酒，展現多變風味.', NULL),
('5', '米酒', 100, '釀造酒', 500, '本產品以蓬萊米為原料，循公賣局採阿米洛法製程釀造，蒸餾擷取最佳品質之酒心經稀釋酒精度為22%，再經儲存6個月～1年以上，純米釀造，完全不添加食用酒精，適合喜好原味米釀白酒之消費者使用，酒中帶有濃厚米糧香氣',Null),
('6', '香檳', 100, '合成酒', 2300, 'Moet & Chandon Brut Impérial是酩悅香檳酒廠的旗艦商品，最具代表性的特徵是它活潑生動的果香，在味蕾上的表現又相當的優雅細膩.', 'image/spsp.jpg'),
('7', '氣泡酒', 100, '合成酒', 1900, '具有細緻且持久的氣泡，滿溢鼠尾草和相思花的清新淡雅氣息。入口甜美細緻，新鮮的酸度中帶有些許的蜂蜜香氣，口感活潑芳香，在口中綻放出悅人甜味與酸度，非常均衡.', NULL),
('8', '玫瑰酒', 100, '合成酒', 1000, '炎炎夏日配上一杯冰涼的玫瑰酒不再只是潮流， 更加是愛酒之人夏日必備之選。玫瑰酒在任何場合都有出色表現， 因為它可以輕易配搭不同食物，能喝上一杯果香宜人、清新冰涼的玫瑰酒， 絕對可以令您的夏日更添愜意.', 'image/rose.jpg'),
('9', '常常酒酒', 100, '合成酒', 999999, NULL,null);


DROP TABLE IF EXISTS order_form; -- Corrected syntax
CREATE TABLE order_form (
    order_id VARCHAR(10) NOT NULL,  
    product_id VARCHAR(5) NOT NULL,
    member_id VARCHAR(10) NOT NULL, 
    price INT NOT NULL, 
    quan INT not null,
    pay_way VARCHAR(8)NOT NULL,
    receiver_name VARCHAR(8) NOT NULL,
    receiver_address VARCHAR(40) NOT NULL,
    receiver_tel VARCHAR(10) NOT NULL,
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

