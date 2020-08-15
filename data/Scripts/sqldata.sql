---Indeed Data_analyst_jobs---
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
select distinct title
from data_analyst_jobs
where title not like '%Data%'
/* 7A. See above */
--
select count(distinct title)
from data_analyst_jobs
where title not like '%Data%'
/* 7B. 111 */
--
select count(distinct title), location
from data_analyst_jobs
where title not like '%Data%' 
and location = 'CA'
group by location
/* 8. 29 in CA */
---
Select company, round(avg(star_rating),2), location,review_count
from data_analyst_jobs
where review_count > 5000
group by company, star_rating, location,review_count
/* 9A. Run above Query */
--
Select company, round(avg(star_rating),2), location,review_count, count(*) as c_count
from data_analyst_jobs
where review_count > 5000
group by company,star_rating, location,review_count
/* 9a. maybe the correct answer for 9A */
--
Select count(*)
from (company,round(avg(star_rating),2), location,sum(review_count), count(*) as c_count
from data_analyst_jobs
where review_count > 5000
group by company,star_rating, location,review_count
having sum(review_count) > 5000
order by) company
----skipped 9B but will come back to it 
Select company, round(avg(star_rating),2) as a_sr, location,review_count,count(*) as c_count
from data_analyst_jobs
where review_count > 5000
group by company, location, review_count
order by a_sr desc, c_count desc
/* 10. The company that has 5k reviews across all locations and
has the highest star rating is 'Kaiser Permanente' with a
rating of 4.20 across 13 of thier locations */ 
----
select distinct title
from data_analyst_jobs
where title like '%Analyst'
/* 11A. Run Query */
---
select count(distinct title) 
from data_analyst_jobs
where title like '%Analyst'
/* 11B. 320 */
--
select distinct title
from data_analyst_jobs
where title Not like '%Analyst% ' and not like '%Analytics%'
/* 12. Could not find a way to remove both terms from the search*/







