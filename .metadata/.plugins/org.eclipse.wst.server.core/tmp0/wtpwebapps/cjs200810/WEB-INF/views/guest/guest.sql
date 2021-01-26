create table guest2 (
  idx   int not null auto_increment primary key,  /* 고유번호 */
  name  varchar(20) not null,                     /* 방문자 이름 */
  email varchar(60),                                  /* 이메일 주소 */
  homepage varchar(60),                           /* 홈페이지(블로그)주소 */
  vdate datetime default now(),                   /* 방문일자 */
  hostip varchar(50) not null,                      /* 방문자 IP */
  content text not null                               /* 방문소감 */
);

insert into guest2 values(default,'관리자','ktc1205@gmail.com','monlini.tistory.com',default,'218.236.203.87','깨끗하게 작성해주세요');

select * from guest2;

alter table guest2 modify vdate timestamp default now();