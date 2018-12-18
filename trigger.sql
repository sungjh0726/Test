drop trigger if exists tr_club_clubmember;

DELIMITER //
Create Trigger tr_club_clubmember
  AFTER insert
  on Club FOR EACH ROW
  
BEGIN

    insert into ClubMember(club, student, level)
    select NEW.id, id, 2 from Student
     where id not in (select student from ClubMember where club = NEW.id and level in (1,2) )
     order by rand() limit 1;
    
END //
DELIMITER ;


insert into Club(name) values('음악부');

select * from Club;


select * from ClubMember where club=(select max(id) from Club);
