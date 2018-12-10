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

-- Check if Student Prof is correctly created
