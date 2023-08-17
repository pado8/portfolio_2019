CREATE USER 'ashram777'@'localhost' IDENTIFIED BY '********';
CREATE USER 'ashram777'@'%' IDENTIFIED BY '********';

CREATE DATABASE ashram777 CHARACTER SET utf8;

GRANT ALL PRIVILEGES ON ashram777.* TO 'ashram777'@'localhost';
GRANT ALL PRIVILEGES ON ashram777.* TO 'ashram777'@'%';

-- flush privileges;
-- show grants for ashram777@localhost;

create table member (
    id varchar(15) not null primary key,
    pass varchar(15) not null,
    name varchar(10) not null,
    nick varchar(10) not null,
    hp char(20) not null,
    email varchar(80),
    regist_day char(20),
    level int
);


create table memo (
    num int not null auto_increment primary key,
    id varchar(15) not null,
    name varchar(10) not null,
    nick varchar(10) not null,
    content text not null,
    regist_day char(20)
);


create table memo_ripple (
    num int not null auto_increment primary key,
    parent int not null,
    id varchar(15) not null,
    name varchar(10) not null,
    nick varchar(10) not null,
    content text not null,
    regist_day char(20)
);


create table qna (
    num int not null auto_increment primary key,
    group_num int,
    depth int not null,
    ord int not null,
    id varchar(15) not null,
    name varchar(10) not null,
    nick varchar(10) not null,
    subject varchar(100) not null,
    content text not null,
    regist_day char(20),
    hit int,
    is_html char(1)
);


create table concert (
    num int not null auto_increment primary key,
    id varchar(15) not null,
    name varchar(10) not null,
    nick varchar(10) not null,
    subject varchar(100) not null,
    content text not null,
    regist_day varchar(20),
    hit int,
    is_html char(1), 
    file_name_0 varchar(40),
    file_name_1 varchar(40),
    file_name_2 varchar(40),
    file_name_3 varchar(40),
    file_name_4 varchar(40),
    file_copied_0 varchar(30),
    file_copied_1 varchar(30),
    file_copied_2 varchar(30),
    file_copied_3 varchar(30),
    file_copied_4 varchar(30)
);


create table download (
    num int not null auto_increment primary key,
    id varchar(15) not null,
    name varchar(10) not null,
    nick varchar(10) not null,
    subject varchar(100) not null,
    content text not null,
    regist_day char(20),
    hit int,
    is_html char(1),
    file_name_0 varchar(40),
    file_name_1 varchar(40),
    file_name_2 varchar(40),
    file_name_3 varchar(40),
    file_name_4 varchar(40),
    file_type_0 varchar(10),
    file_type_1 varchar(10),
    file_type_2 varchar(10),
    file_type_3 varchar(10),
    file_type_4 varchar(10),
    file_copied_0 varchar(30),
    file_copied_1 varchar(30),
    file_copied_2 varchar(30),
    file_copied_3 varchar(30),
    file_copied_4 varchar(30) 
);


create table free (
    num int not null auto_increment primary key,
    id varchar(15) not null,
    name varchar(10) not null,
    nick varchar(10) not null,
    subject varchar(100) not null,
    content text not null,
    regist_day char(20),
    hit int,
    is_html char(1),
    file_name_0 varchar(40),
    file_name_1 varchar(40),
    file_name_2 varchar(40),
    file_name_3 varchar(40),
    file_name_4 varchar(40),
    file_copied_0 varchar(30),
    file_copied_1 varchar(30),
    file_copied_2 varchar(30),
    file_copied_3 varchar(30),
    file_copied_4 varchar(30) 
);


create table free_ripple (
    num int not null auto_increment primary key,
    parent int not null,
    id varchar(15) not null,
    name varchar(10) not null,
    nick varchar(10) not null,
    content text not null,
    regist_day char(20)
);


create table greet (
    num int not null auto_increment primary key,
    id varchar(15) not null,
    name varchar(10) not null,
    nick varchar(10) not null,
    subject varchar(100) not null,
    content text not null,
    regist_day char(20),
    hit int,
    is_html char(1)
);

