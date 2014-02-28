-- Talia Rossi
-- 2/28/2014
-- Lab 6: Really Interesting Queries

-- Question 1
select p.city, c.name, count(p.name)
from products p,
     customers c
where p.city = c.city
group by p.city, c.name
order by count(p.name) desc
limit 2

-- Question 2
select p.city, c.name, count(p.name)
from products p,
     customers c
where p.city = c.city
group by p.city, c.name
having count(p.name) >= 3
order by count(p.name) desc

-- Question 3
select *
from products
where priceUSD > (select avg(priceUSD)
                  from products)
order by pid asc

-- Question 4
select c.name, o.pid, o.dollars
from customers c,
     orders o
where c.cid = o.cid
order by o.dollars desc

-- Question 5
select c.name, sum(o.qty)
from customers c,
     orders o
where c.cid = o.cid
group by c.name
order by c.name asc

-- Question 6
select c.name as "customers name", a.name as "agents name", p.name as "products name"
from customers c,
     products p,
     agents a,
     orders o
where c.cid = o.cid
  and a.aid = o.aid
  and p.pid = o.pid
  and a.city = 'New York'
order by c.name asc

-- Question 7
select










