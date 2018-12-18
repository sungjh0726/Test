drop view if exists v_grade_subject_average;
 
create view v_grade_subject_average as
select sub.student_id, sub.student_name, sub.subjects_count, ((g.midterm + g.finalterm) /2) as 'average'
 from Grade g inner join (
     select e.id, stu.id as 'student_id', stu.name as 'student_name', stu.subjects as 'subjects_count' 
     from Enrol e inner join Student stu on e.student = stu.id) sub
 on g.enroll = sub.id;

select * from v_grade_subject_average;
