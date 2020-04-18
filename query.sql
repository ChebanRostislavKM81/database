--- First Select
---select home_team, count(*)
---From RESULTS
---Group by home_team;

---select away_team, count(*)
---From RESULTS
---Group by away_team;

--- TheEnd 

--- Second Select
--select city, count(*) from cities
--where tournament!= 'friendly'
--group by city
--- The End
--- Third Select
--select count(*)/(select count(*) from NEUTRAL)*100 AS percent
--FROM NEUTRAL
--WHERE
--neutral = 'TRUE'
--group by neutral
-- The END

