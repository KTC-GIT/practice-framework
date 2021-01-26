create table user(
	idx int not null auto_increment primary key,
	id varchar(20) not null,
	pw varchar(20) not null
);

desc user;

insert into user values(default,'hkd1234','1234');
insert into user values(default,'kms1234','1234');
insert into user values(default,'onr1234','1234');
insert into user values(default,'jnr1234','1234');
insert into user values(default,'mcn1234','1234');
insert into user values(default,'gsgg1234','1234');

select * from user;

alter table user modify pw text not null;