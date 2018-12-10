## 1. Student Table

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

-- Creating Student  table

desc Student;
show table status ;
show index from Student;
select * from Student;

-- Check if Student table is correctly created
