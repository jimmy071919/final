DROP DATABASE IF EXISTS BackendDB;

DROP table if exists account ; # 資料表名稱
create table account (
	member_id VARCHAR(5) NOT null,  
    username VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL,
    PRIMARY KEY (member_id)
    );
