create database sales;

use sales;

create table saless(orderid int,region varchar(10),
product varchar(20),unitsold int,unitprice int, targetmet varchar(10),
discount float,customerrating float,months int);


-- TOTAL REVENUE 
select sum(totalrevenue) as totalsum
from saless;


-- TOTAL units sold
select sum(unitsold) as totalunits
from saless;

-- Total revenue of each product
SELECT product,
       SUM(totalrevenue) AS productrevenue
FROM saless
GROUP BY product;

-- Total revenue by month
select months,
sum(totalrevenue) as totalsales
from saless
group by months
order by months;


-- Number of targets met
select count(targetmet) as pass
from saless
where targetmet='yes';

-- Number of targets not met
select count(targetmet) as fail
from saless
where targetmet='no';

-- Quality of product based on user rating
select count(customerrating) as service
from saless
where customerrating>3.5;

-- TOTAl jeans sales over the months
select months,sum(totalrevenue) as revenue
from saless
where product='jeans'
group by months
order by months;

-- Total jackes sales over the months
select months,sum(totalrevenue) as revenue
from saless
where product='jacket'
group by months
order by months;

-- Total shirts sales over the months
select months,sum(totalrevenue) as revenue
from saless
where product='shirt'
group by months
order by months;

-- total sales per regions
select region,sum(totalrevenue) as totalsales
from saless
group by region;

-- total sales of regions over the months
SELECT months,
       product,
       SUM(totalrevenue) AS totalsales
FROM saless
GROUP BY months, product
ORDER BY product;

-- total revnue after discount
select sum(trat) as totalrevenue
from saless;

-- total discount provided to customers
select round(sum(trad),0) as totaldiscount
from saless;

