/*
Talia Rossi
2/16/14
*/
-- Lab 3 - Query Question 1
select name, city
from agents
where name = 'Smith'

-- Lab 3 - Query Question 2
select pid, name, quantity
from products
where priceUSD > 1.25

-- Lab 3 - Query Question 3
select ordno, aid
from orders

-- Lab 3 - Query Question 4
select name, city
from customers
where city = 'Dallas'

-- Lab 3 - Query Question 5
select name
from agents
where city != 'New York'
  and city != 'Newark'

-- Lab 3 - Query Question 6
select *
from products
where city != 'New York'
  and city != 'Newark'
  and priceUSD >= 1.00

-- Lab 3 - Query Question 7
select *
from orders
where mon = 'jan'
   or mon = 'mar'

-- Lab 3 - Query Question 8
select *
from orders
where mon = 'feb'
  and dollars < 100

-- Lab 3 - Query Question 9
select *
from orders
where cid = 'c001'
