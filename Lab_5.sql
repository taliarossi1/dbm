-- Talia Rossi
-- 2/21/2014
-- Lab 5: SQL Queries - The Three-quel

-- Quesiton 1
select agents.city
from agents,
     orders,
     customers
where agents.aid = orders.aid
  and customers.cid = orders.cid
  and customers.name = 'Basics'
order by agents.city asc

-- Question 2
select products.pid
from products
     left join orders
            on products.pid = orders.pid
     left join customers
            on customers.cid = orders.cid
where customers.city = 'Kyoto'
order by products.pid asc

-- Question 3
select name
from customers
where cid not in (select cid
                 from orders)
order by name asc

-- Question 4
select customers.name
from customers
left outer join orders 
on customers.cid = orders.cid
where orders.cid is null
order by customers.name asc

-- Question 5
select customers.name as "customer name", agents.name as "agent name"
from customers,
     orders,
     agents
where customers.cid = orders.cid
  and agents.aid = orders.aid
  and customers.city = agents.city
order by "customer name" asc

-- Question 6
select customers.name as "customer name", agents.name as "agent name", customers.city
from customers,
     agents
where customers.city = agents.city
order by "customer name" asc

-- Question 7
select city, sum(quantity) as "sum_quantity"
from products
group by city
order by sum_quantity asc
limit 1




















