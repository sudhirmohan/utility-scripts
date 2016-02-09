#Sub queries
#if we want to know who actually gave that maximum amount

# get the maximum by aggregating.
# find the user with that amount.

select max(amount) from contributors;

#The subquery appears in parentheses, and it stands in for the value we want to test against amount. The subquery is executed first,
# and its result is used in the outer query. Because the subquery returns 2400, the query above gives the same result as a query for amount = 2400.

select * from contributors where amount = (select max(amount) from contributors);

#, to get the total contributions from the top 20 contributors, we would have a list of 20 rows we want to match against. 
#That’s where our new friend IN comes to the rescue:
select * from contributors where amount in (select amount from contributors) order by amount desc limit 20 ;

select * from contributors order by amount desc limit 20;

SELECT SUM(amount) FROM contributors WHERE id IN (SELECT id FROM contributors ORDER BY amount DESC LIMIT 20);


# Group BY is used in conjunction with aggregate functions. Doing so allows us to write queries that return counts, sums, averages, minimums and maximums per group.

# what is the total amount of contributions per state.

select sum(amount),city,state from contributors group by city,state order by state asc;

# let’s find all cities for which the total contributions is greater than $3,000.
# Turns out that aggregate functions can’t be used in a WHERE clause. The WHERE clause acts as a filter on each row in turn, but here we want to test an expression against a
# value for a group of rows (SUM(amount)). The equivalent of a WHERE clause for aggregates is HAVING. It appears after the GROUP BY:
select sum(amount) as samount, city 
from contributors 
group by city 
having samount > 3000 order by samount;  


#LOAD DATA LOCAL INFILE '/Users/wyh669/Documents/SQL/candidates.txt' INTO TABLE contributors_candidates FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';
#LOAD DATA LOCAL INFILE '/Users/wyh669/Documents/SQL/contributors_with_candidate_id.txt' INTO TABLE contributors FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

select count(*) from contributors;

# to find all of the contributors to Barack Obama,
select * from contributors_candidates;

SELECT contributors.last_name, contributors.first_name, contributors_candidates.last_name
FROM contributors, contributors_candidates 
WHERE contributors.candidate_id = contributors_candidates.cand_id
and contributors_candidates.last_name='obama';

-- SELECT c.last_name, c.first_name
-- FROM contributors as c
-- inner join
-- select cc.last_name 
-- from contributors_candidates as cc
-- on cc.candidate_id = c.cand_id 
-- where cc.last_name='obama';

SELECT contributors.last_name, contributors.first_name, contributors_candidates.last_name 
FROM contributors 
JOIN contributors_candidates 
ON contributors.candidate_id = contributors_candidates.cand_id
where contributors_candidates.last_name='obama';

#truncate contributors;
# contributorsselect * from contributors;



