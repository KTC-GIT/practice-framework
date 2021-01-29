create table board2(
	idx int not null auto_increment primary key,
	nick varchar(20) not null,
	title varchar(50) not null,
	hostip varchar(20) not null,
	content text not null,
	writedate timestamp default now(),
	hits int default 0
);

desc board2;