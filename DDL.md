* Creating Student table

CREATE TABLE Student ( 
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name varchar(32) NOT NULL,
  addr varchar(30) NOT NULL,
  birth varchar(8) NOT NULL,
  tel varchar(15) NOT NULL,
  email varchar(31) NOT NULL,
  regdt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
);

` creating Student table`

