create table Enrol(
    id int unsigned not null auto_increment primary key,
    subject smallint unsigned not null,
    student int not null,
    constraint foreign key fk_subject(subject) references Subject(id) on delete cascade,
    constraint foreign key fk_student(student) references Student(id) on delete cascade
);
