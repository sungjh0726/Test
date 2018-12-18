
drop procedure if exists sp_popular_prof_three;

DELIMITER //
CREATE Procedure sp_popular_prof_three() 
BEGIN
	
   
    select sbj.prof as 'professor_id', max(p.name) as 'professor_name', count(*) as 'student_count', 
           round(avg(p.likecnt)) as 'like_count', 
           round(avg(g.midterm + g.finalterm)/2) as 'average_score', 
           ((round(avg(p.likecnt))*0.4) + (round(avg(g.midterm + g.finalterm)/2)*0.6)) as 'weight'
    from Enrol e inner join Subject sbj on e.subject = sbj.id
                 inner join Prof p on sbj.prof = p.id
                 inner join Grade g on e.id = g.enroll
    group by sbj.prof
    order by weight desc limit 3;

END //
DELIMITER ;

call sp_popular_prof_three;
