-- List all members, incl recommender, if any
-- Order by surname, firstname
SELECT mems.firstname as memfname, mems.surname as memsname,
recs.firstname as recfname, recs.surname as recsname
FROM cd.members mems
LEFT OUTER JOIN cd.members recs
ON mems.recommendedby = recs.memid
ORDER BY mems.surname, mems.firstname
