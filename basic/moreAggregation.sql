WITH lastdate as
(SELECT max(joindate) as maxjoin
 FROM cd.members)
 SELECT firstname, surname, joindate
 FROM cd.members
 WHERE joindate = (SELECT maxjoin from lastdate)