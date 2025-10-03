SELECT bks.starttime as start, fac.name as name
FROM cd.facilities fac
	INNER JOIN cd.bookings bks
	ON fac.facid = bks.facid
WHERE
	fac.name like 'Tennis Court%' AND
	bks.starttime >= '2012-09-21' AND
	bks.starttime < '2012-09-22'
ORDER BY bks.starttime