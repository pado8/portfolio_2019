create table memo (
    num int not null auto_increment primary key,
    id varchar(15) not null,
    name varchar(10) not null,
    nick varchar(10) not null,
    content text not null,
    regist_day char(20)
);
