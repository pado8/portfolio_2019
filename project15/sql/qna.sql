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
