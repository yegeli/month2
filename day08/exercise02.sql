

练习2: 表关联查询 使用cls 和 interest

1. 学生对应的兴趣爱好以及兴趣班价格

select cls.name,interest.hobby,interest.price from cls inner join interest on cls.name = interest.name;

2. 查询所有学生信息,同时标注出那些有什么样的兴趣爱好

select c.name,c.sex,i.hobby from cls as c left join interest as i on c.name = i.name;

3. 查询所有兴趣班信息,同时标注有那些学生参加了这些兴趣班

select c.name ,i.hobby,i.price from cls as c right join interest as i on c.name = i.name;




进阶练习:

create table class(cid int primary key auto_increment,
 caption char(4) not null);

create table teacher(tid int primary key auto_increment,
 tname varchar(32) not null);

create table student(sid int primary key auto_increment,
 sname varchar(32) not null,
 gender enum('male','female','others') not null default 'male',
 class_id int,
 foreign key(class_id) references class(cid)
 on update cascade
 on delete cascade);

create table course(cid int primary key auto_increment,
 cname varchar(16) not null,
 teacher_id int,
 foreign key(teacher_id) references teacher(tid)
 on update cascade
 on delete cascade);

create table score(sid int primary key auto_increment,
                  student_id int,
                  course_id int,
                  number int(3) not null,
                  foreign key(student_id) references student(sid)
                   on update cascade
                   on delete cascade,
                   foreign key(course_id) references course(cid)
                   on update cascade
                   on delete cascade);

insert into class(caption) values('三年二班'),('三年三班'),('三年一班');
insert into teacher(tname) values('波多老师'),('苍老师'),('小泽老师');
insert into student(sname,gender,class_id) values('钢蛋','female',1),('铁锤','female',1),('山炮','male',2),('彪哥','male',3);
insert into course(cname,teacher_id) values('生物',1),('体育',1),('物理',2);
insert into score(student_id,course_id,number) values(1,1,60),(1,2,59),(2,2,100),(3,2,78),(4,3,66);

1. 查询每位老师教授的课程数量
select teacher.tname,count(course.cname)from teacher left join course on course.teacher_id = teacher.tid group by teacher.tname;

2. 查询学生的信息及学生所在班级信息

select student.sname,student.gender,class.caption from
student left join class on student.class_id = class.cid;

3. 查询各科成绩最高和最低的分数,形式 : 课程ID  最高分  最低分

select score.course_id,max(score.number),min(score.number) from score left join course on score.course_id = course.cid group by score.course_id;

4. 查询平均成绩大于85分的所有学生学号,姓名和平均成绩

select student.sid,student.sname,avg(score.number) from student left join score on student.sid = score.student_id group by student.sid having avg(score.number)>85;

5. 查询课程变化为2且课程成绩在80以上的学生学号和姓名

select student.sid,student.sname from student left join score on student.sid = score.student_id  where score.course_id = 2 and score.number > 85 group by student.sid,student.sname;

6. 查询各个课程及相应的选修人数
select course.cname, count(score.sid) from course left join score on course.cid = score.course_id group by course.cname;

delimiter $$
create function st2() returns int
begin
declare val1 float;
declare val2 float;
set val1 =(select score cls order by score desc limit 1);
select score from cls order by socre limit 1 into val2;
return val1 + val2;
end $$
delimiter ;
select st();

delimiter $$
create function st() returns int
begin
return (select score from cls order by score desc limit 1);
end $$
delimiter ;
select st();

delimiter $$
create function aqueryNameById(uid int(10))
returns varchar(20)
begin
return  (select name from cls where id=uid);
end $$
delimiter ;

select aqueryNameById(1);


delimiter $$
create procedure st()
begin
    select name,age from class_1;
    select name,score from class_1 order by score desc;
end $$
delimiter ;

call st();

delimiter $$
create procedure p_in ( IN num int )
begin
    select num;
    set num=100;
    select num;
end $$

delimiter ;

set @num=10;
call p_out(@num)


delimiter $$
create procedure p_out ( OUT num int )
begin
    select num;
    set num=100;
    select num;
end $$

delimiter ;

set @num=10;
call p_out(@num)