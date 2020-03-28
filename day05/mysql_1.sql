

-- insert 部分
insert into interest (name,hobby,level,price,remark) values ('Lily','sing,dance','B',16800.00,"骨骼惊奇练舞奇才");


insert into class_1 (name,age,sex,score) values ('wang',22,'m',65);
insert into class_1 (name,age,sex,score) values ('d3',22,'w',65);


update book set price=45 where book_name = "呐喊";

alter table book add public_date date after price;

update book set public_date = "2016-10-1" where autor = "老舍";

update book set public_date = "2018-1-1" where public = "中国文学出版社" and autor != "老舍";

alter table book  modify price decimal(5,2);

select * from book where autor = "鲁迅" and public_date > "2017-1-1";

delete from book where price > 65;

alter table marathon modify registration_time datetime default now();


create table sanguo(
id int primary key auto_increment,
name varchar(30) not null,
gender enum("男","女") not null,
county char(1),
attack tinyint,
defense tinyint
);



insert into sanguo
values (1, '曹操', '男', '魏', 256, 63),
       (2, '张辽', '男', '魏', 328, 69),
       (3, '甄姬', '女', '魏', 168, 34),
       (4, '夏侯渊', '男', '魏', 366, 83),
       (5, '刘备', '男', '蜀', 220, 59),
       (6, '诸葛亮', '男', '蜀', 170, 54),
       (7, '赵云', '男', '蜀', 377, 66),
       (8, '张飞', '男', '蜀', 370, 80),
       (9, '孙尚香', '女', '蜀', 249, 62),
       (10, '大乔', '女', '吴', 190, 44),
       (11, '小乔', '女', '吴', 188, 39),
       (12, '周瑜', '男', '吴', 303, 60),
       (13, '吕蒙', '男', '吴', 330, 71);


select * from sanguo  where county = "蜀" order by attack;

update sanguo set attack = 360,defense = 70 where name = "赵云";

update sanguo set attack =300 where county = "吴" and attack>300 limit 2;

select name as 姓名,attack as 攻击力 from sanguo where county = "魏" and attack>200;

select * from sanguo order by attack desc,defense desc;

select * from sanguo where name like "___";

select * from sanguo where county= "蜀" and attack > (select attack from sanguo where county = "魏" order by attack desc limit 1);

select * from (select * from sanguo where county= "魏") as f  order by f.attack desc limit 2;

select * from sanguo where gender="女" union select * from sanguo where gender= "男" and attack < 250;

