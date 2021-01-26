create table member(
	idx int auto_increment primary key,
	id varchar(20) not null,
	pw text not null,
	nick varchar(20) not null,
	birth varchar(10) not null,
	email varchar(50) not null,
	tel varchar(20) not null,
	address varchar(100) not null,
	joindate timestamp not null default now(),
	latestLogin varchar(50)
);

desc member;

