drop Function if exists f_finding_average;

DELIMITER //
CREATE Function f_finding_average(_stu_id smallint) RETURNS smallint
 
BEGIN

	RETURN (select round(avg(g.midterm + g.finalterm)/2) from Grade g inner join Enrol e on g.enroll = e.id 
          where e.student = _stu_id);

END //
DELIMITER ;

select f_finding_average(13);
