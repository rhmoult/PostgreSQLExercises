SELECT bks.starttime AS start, fac.name AS name
FROM cd.facilities fac
	INNER JOIN cd.bookings bks
	ON fac.facid = bks.facid
WHERE
	fac.name LIKE 'Tennis Court%' AND
	bks.starttime >= '2012-09-21' AND
	bks.starttime < '2012-09-22'
ORDER BY bks.starttime