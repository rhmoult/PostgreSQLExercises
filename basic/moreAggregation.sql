 SELECT firstname, surname, joindate
 FROM cd.members
 WHERE joindate = (SELECT max(joindate) from cd.members)