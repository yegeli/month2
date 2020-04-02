


-- 1. 将book数据表拆分  图书表   作家表   出版社表
--          字段自拟  关系自拟
create table 作家(
id int primary key auto_increment,
name varchar(30),
sex char,
remark text);

create table 出版社(
id int primary key auto_increment,
pname varchar(30),
address varchar(128),
tel char(16)
);


create table 图书(
id int primary key auto_increment,
bname varchar(30),
price float,
publication_date date,
aid int,
pid int,
constraint afk foreign key(aid) references 作家(id),
constraint pfk foreign key(pid) references 出版社(id)
);

create table author_publication(
id int primary key auto_increment,
times date,
a_id int,
p_id int,
constraint a_fk foreign key(a_id) references 作家(id),
constraint p_fk foreign key(p_id) references 出版社(id)
);




-- 2. 函数 传入两个学生的ID 得到这两个学生的成绩之和
delimiter $$
create function get_sum(uid1 int,uid2 int)
returns float
begin
declare a float
declare b float
select score from cls where id = uid1 into a;
select score from cls where id = uid2 into b;
return a+b;
end $$
delimiter ;
select get_sum();

-- 3.存储过程  传入一个学生的姓名 通过外部的用户变量得到这个学生的成绩
delimiter $$
create procedure get_score(in uname varchar(30),out s float)
begin
set s =(select score form cls where name = uname);
end $$
delimiter ;
set @s=0;
call get_score('yege',@s);
select @s;