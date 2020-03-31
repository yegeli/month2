


-- -----+-----------------------------+
-- | id | book_name    | autor     | public                      | price | public_date | note                        |
-- +----+--------------+-----------+-----------------------------+-------+-------------+-----------------------------+
-- |  4 | 《边城》     | 沈从文    | 中国机械工业出版社          | 54.00 | NULL        | 小城故事多                  |
-- |  5 | 《茶馆》     | 老舍      | 中国教育出版社              | 45.00 | 2016-10-01  | 老北京                      |
-- |  7 | 《围城》     | 鲁迅      | 中国文学出版社              | 36.00 | 2018-01-01  | 你心中的围城是什么          |
-- +----+--------------+-----------+-----------------------------+-------+--------

select autor,avg(price) from book group by autor;

select public,count(*) from book group by public;

select  count(distinct public) from book;

select public,max(price) from book group by public having max(price) >50 order by max(price) desc;

select public_date,avg(price) from book group by public_date;

insert into dept (id,name) values (1,"技术部"),(2,"财务部"),(3,"销售部"),(4,"行政部"),(5,"市场部");


insert into person values
(1,"Lily",29,"w",20000,"2017-4-3",2),
(2,"dssd",23,"m",20100,"2016-3-12",1),
(3,"sds",12,"w",20120,"2012-2-23",1),
(4,"zzx",14,"m",20001,"2016-6-10",4),
(5,"zxzs",63,"w",21200,"2019-2-12",3),
(6,"sdes",23,"m",20400,"2014-7-12",3);



create table student(id int primary key auto_increment,name varchar (50) not null);

create table record(id int primary key auto_increment,
comment text not null,
st_id int unique,
foreign key(st_id) references student(id)
on delete cascade
on update cascade );



create table person(
id varchar(32) primary key,
name varchar(30),
sex char(1),
age int
);

create table car(
id varhar(32) primary key,
name varchar(30),
price decimal(10,2),
pid varchar(32),
foreign key (pid) references person(id)
);



create table athlete(
id int not null auto_increment,
name varchar(30),
age tinyint not null,
country varchar(30) not null,
description varchar(30),
primary key (id)
);

create table item(
id int not null auto_increment,
rname varchar(30) not null,
primary key (id)
);


create table athlete_item(
aid int not null,
tid int not null,
primary key(aid,tid),
constraint athlete_fk foreign key(aid) references athlete(id),
constraint item_fk foreign key(tid) references item(id)
);