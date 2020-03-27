
# 创建books数据库
create database books character set utf8;

# 使用books数据库
use books;

# 创建book表
create table book(
    id int primary key auto_increment,
    book_name varchar(30) not null,
    autor char(10) not null,
    public varchar(30) not null,
    price float default 0,
    note text);

# 查看所有表
show tables;

# 查看表的结构
desc book;

# 插入书
insert into book (book_name,autor,public,price,note) values ("Python从入门到项目实践","明日科技","吉林大学出版社",99.80,"软件开发经典系列正藏版");
insert into book (book_name,autor,public,price,note) values ("Python实战入门","野哥","清华大学出版社",88.98,"野哥欢迎你一起来实战！！");

# 查询数据
select * from book;