
-- creating ClubMember table

CREATE TABLE ClubMember (
  id smallint unsigned NOT NULL auto_increment primary key,
	club smallint unsigned NOT NULL,
	student int(11) not null,
  level smallint not null default 0,
	constraint foreign key fk_club(club) references Club(id),
  constraint foreign key fk_student(student) references Student(id)
);
