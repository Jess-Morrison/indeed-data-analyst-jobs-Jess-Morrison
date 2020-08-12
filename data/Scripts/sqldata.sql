/*Stuff */
--
select count (*)
from data_analyst_jobs
/* 1. 1,793 */
--
select *
from data_analyst_jobs
limit 10
/* 2.Exxon Mobil */
---
select location
from data_analyst_jobs
where location= 'TN'
/* 3A. 21 */
--
SELECT location
from data_analyst_jobs
where location = 'TN' 
or location = 'KY'
/* 3B. 27 in TN or KY */
---
select count(*) star_rating
from data_analyst_jobs
where location = 'TN'
and star_rating > 4
/* 4. 3 had a star listing of 4 */
--
select count(*) 
from data_analyst_jobs
where review_count 
between 500 and 1000
/* 5. 151 */
---
select location as state, count(*) , avg(star_rating) as avg_rating
from data_analyst_jobs
group by location
/* 6A. See above */
---
select location as state, count(star_rating) 
, avg(star_rating) as avg_rating 
from data_analyst_jobs
group by location
order by avg_rating desc
/* 6B. Nebraska has the highest avg rating */
--





