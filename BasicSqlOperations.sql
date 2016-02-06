INSERT INTO contributors (last_name, first_name, city, state, zip, amount) VALUES ('Buffet', 'Warren', 'Omaha', 'Nebraska', '68101', 1500);
INSERT INTO contributors (last_name, first_name, city, state, zip, amount) VALUES ('Winfrey', 'Oprah', 'Chicago', 'IL', '60601', 500);
INSERT INTO contributors (last_name, first_name, city, state, zip, amount) VALUES ('Chambers', 'Anne Cox', 'Atlanta', 'GA', '30301', 200);
INSERT INTO contributors (last_name, first_name, city, state, zip, amount) VALUES ('Cathy', 'S. Truett', 'Atlanta', 'GA', '30301', 1200);

select * from contributors;
select  city,state from contributors;
select distinct  city,state,last_name from contributors where last_name like '%t';
select * from contributors where amount >= 1200;

# Remove duplicate entries from table
create table contributors2 as select distinct * from contributors;
drop table contributors;
ALTER TABLE contributors2 RENAME contributors;

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
