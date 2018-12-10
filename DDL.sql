1. Student table

CREATE TABLE `Student` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '학번',
  `name` varchar(32) NOT NULL,
  `addr` varchar(30) NOT NULL,
  `birth` varchar(8) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `email` varchar(31) NOT NULL,
  `regdt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_Students_tel` (`tel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Creating Student table

desc Student;
show table status ;
show index from Student;
select * from Student;

-- Check if Student table is correctly created


2. Prof table

create table Prof(
	id smallint unsigned not null auto_increment primary key,
	name varchar(31) not null,
 	likecnt int(0) default 0
);

-- Creating Prof table

desc Prof;
show table status ;
show index from Prof;
select * from Prof;

-- Check if Prof is correctly created


3. Subject table

create table Subject(
	id smallint unsigned not null auto_increment primary key,
	name varchar(31) not null,
	prof smallint unsigned,
	constraint foreign key fk_prof(prof) references Prof(id) on delete set 
 );

-- Creating Subject table, prof column is a foreign key connected with id value in Prof table.

desc Subject;
show table status ;
show index from Subject;
select * from Subject;

-- Check if Subject is correctly created

4. Enrol table

create table Enrol(
	id int unsigned not null auto_increment primary key,
	subject smallint unsigned not null,
	student int not null,
	constraint foreign key fk_subject(subject) references Subject(id) on delete cascade,
	constraint foreign key fk_student(student) references Student(id) on delete cascade
);

-- Creating Enrol table, subject column is a foreign key connected with id value in Subject table on cascade key and
-- student column is a foreign key connected with id value in Student table on cascade key.

desc Enrol;
show table status ;
show index from Enrol;
select * from Enrol;

-- Check if Subject is correctly created

