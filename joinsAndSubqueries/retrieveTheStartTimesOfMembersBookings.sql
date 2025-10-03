WITH dave as (
  SELECT memid as id
  FROM cd.members
  WHERE surname = 'Farrell' AND
  firstname = 'David'
  )
SELECT starttime
FROM cd.bookings
WHERE memid = (SELECT id FROM dave);