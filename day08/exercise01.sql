



create table student(
    id int primary key auto_increment,
    name varchar(30) not null,
    number int,
    age tinyint,
    sex enum("男","女"),
    birth_address varchar (128)
);



create table teacher(
    id int primary key auto_increment,
    teacher_number int not null,
    teacher_name varchar(30),
    age tinyint,
    post text
);

create table course(
    id int primary key auto_increment,
    course_score float,
    course_number int not null,
    course_name varchar(30),
    tea_id int,
    constraint k_tea foreign key(tea_id) references teacher(id)
);

create table change_course(
    id int primary key auto_increment,
    stud_id int,
    cour_id int,
    score float,
    constraint k_stu foreign key(stud_id) references student(id),
    constraint k_cour foreign key(cour_id) references course(id)
);