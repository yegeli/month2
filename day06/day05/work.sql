--
-- 作业： 1. 创建一个数据库 books 使用utf8编码

create database books charset=utf8;

--       2. 在books中创建数据表 book   字段的类型和约束条件自己拟定

use books;
create table book(id int primary key auto_increment,
                  book_name varchar(30) not null,
                  autor varchar(30) not null,
                  public varchar(30) not null,
                  price float default 98.99,
                  note text);

--
--           id  书名  作者  出版社  价格  备注
--
--       3. 向book插入若干数据


insert into book (book_name,autor,public,price,note) values
("《骆驼祥子》","老舍","中国文学出版社",88.98,"骆驼祥子是中国文学"),
("《边城》","沈从文","中国机械工业出版社",54,"小城故事多"),
("《茶馆》","老舍","中国教育出版社",43,"老北京"),
("《呐喊》","鲁迅","中国教育出版社",72.5,"最后的声音"),
("《围城》","鲁迅","中国文学出版社",36,"你心中的围城是什么");



insert into book (book_name,autor,public,price) values
("《林家铺子》","茅盾","中国机械工业出版社",88);
--          作者： 老舍  鲁迅  。。。
--          价格： 30 -- 120
--          出版社 ： 中国文学  机械工业   中国教育 。。。。


