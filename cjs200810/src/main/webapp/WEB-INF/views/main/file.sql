create table file2 (
	idx int not null auto_increment primary key,
	bidx int not null default 0,
	fileName text not null,
	oriFileName text not null,
	downCount int not null default 0
);

desc file2;