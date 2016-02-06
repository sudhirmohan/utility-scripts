SELECT * FROM Owners.contributors;

#find all contributors from Georgia who have given more than $1000:
select * from contributors where state = 'GA' and amount > 1000;
#find all contributors who either live in Georgia or who have given more than $1000:
select * from contributors where state = 'GA' or amount > 1000;
#find all contributors who either live in Georgia or who have given more than $
select * from contributors where state in ('GA','IL')  and amount > 1000;
#sorting results by order by
select distinct * from contributors where state in ('GA','IL')  and amount > 1000 order by last_name,amount asc;
# clear table of all the data.
#truncate contributors;
select * from contributors;

select distinct * from contributors where state in ('GA','IL')  and amount > 200 order by amount,last_name asc;
#update an attribute of a table.
#update contributors set state = 'NE' where id=1;

#Read from a txt file
# LOAD DATA LOCAL INFILE '/Users/wyh669/Documents/SQL/contributors.txt' INTO TABLE contributors FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';
select * from contributors;
# NULL is a key word.
select * from contributors where first_Name = "";
# <> is the same as !=
SELECT * FROM contributors WHERE state = 'VA' AND last_name <> 'Lewis';

SELECT * FROM contributors WHERE last_Name LIKE '% ';

SELECT CONCAT(city, ', ', state) FROM contributors;

SELECT * from contributors WHERE UPPER(city) = 'BIRMINGHAM';

select * from contributors where amount  between 1000 and 1500;

#Let’s find all contributors from a few southern states:
select * from contributors where state in ('FL');

#Let’s find number of contributors from Florida:
select count(distinct zip) from contributors where state in ('FL') ;
#and state not in (NUll);

#Update contributors set zip = '339044462' where id in (44);

