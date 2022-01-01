--note there are only two paid (Y) reviews
select count(*),  vine
from vine_table
group by vine 

-- Neither of the vine = 'Y' reviews have total votes > 20
select *
from vine_table
where vine = 'Y'


--Create new table for vote totals over 20
Select *
--into table Votes
from vine_table
where total_votes > 20 

-- Percent of helpful votes greater than 50% of total votes
select * , 
cast(helpful_votes as float)/cast(total_votes as float) as percent_helpful

--into table percent_helpful

from votes
where cast(helpful_votes as float)/cast(total_votes as float) >=0.5

--new table vine= Y
select * 
into table reviews_paid
from percent_helpful
where  vine = 'Y'

--new table vine= N
select * 
into table reviews_unpaid
from percent_helpful
where vine = 'N'

--percent unpaid reviews = five star
WITH t 
AS 
( 
    SELECT count(*) AS num_rows, sum(case when star_rating = 5
then 1
else 0 
end) as Five_Star 
	from reviews_unpaid
)
SELECT *, cast(Five_Star as float)/cast(num_rows as float) AS PercentFive_Star
FROM t






