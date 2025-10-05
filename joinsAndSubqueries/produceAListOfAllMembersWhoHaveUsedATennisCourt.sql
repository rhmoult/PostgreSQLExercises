-- Produce a list of all members who have used a tennis court
-- Incl member name, court name
-- No dupes, order by member name then fac name
SELECT DISTINCT mems.firstname || ' ' || mems.surname as member,
facs.name as facility
FROM cd.members mems
JOIN cd.bookings bks
ON mems.memid = bks.memid
JOIN cd.facilities facs
ON bks.facid = facs.facid
WHERE facs.name like 'Tennis Court%'
ORDER by member, facility