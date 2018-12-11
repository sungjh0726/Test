CREATE TABLE Dept(
  id smallint unsigned NOT NULL auto_increment primary key,
	name varchar(45) not null,
	prof smallint unsigned not null,
  student smallint unsigned not null default 0,
  constraint foreign key fk_prof(prof) references Prof(id)
);
