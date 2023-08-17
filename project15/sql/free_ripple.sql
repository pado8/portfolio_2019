create table free_ripple (
    num int not null auto_increment primary key,
    parent int not null,
    id varchar(15) not null,
    name varchar(10) not null,
    nick varchar(10) not null,
    content text not null,
    regist_day char(20)
);
