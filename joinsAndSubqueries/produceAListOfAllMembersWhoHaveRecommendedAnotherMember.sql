SELECT DISTINCT recs.firstname AS firstname, recs.surname AS surname
FROM cd.members members
    INNER JOIN cd.members recs 
        ON members.recommendedby = recs.memid
ORDER BY surname, firstname;