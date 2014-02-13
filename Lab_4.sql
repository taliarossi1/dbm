-- Talia Rossi
-- 2/14/2014
-- Lab 4: SQL Queries - The Sequel

-- Question 1
select city
from agents
where aid in (select aid
              from orders
              where cid in (select cid
                            from customers
                            where name = 'Basics')
              )
order by city asc

-- Question 2
select pid
from products
where pid in (select pid
              from orders
              where aid in (select aid
                            from orders
                            where cid in (select cid
                                          from customers
                                          where city = 'Kyoto')
                            )
              )
order by pid asc

-- Question 3
select cid, name
from customers
where cid not in (select cid
                  from orders
                  where aid in (select aid
                                from agents
                                where aid = 'a03')
              )
order by cid asc

-- Question 4
select cid, name
from customers
where cid in (select cid
              from orders
              where pid = 'p01')
                    and cid in (select cid
                                from orders
                                where pid = 'p07')
order by cid asc

-- Question 5
select pid
from products
where pid in (select pid
              from orders
              where cid in (select cid
                            from orders
                            where aid in (select aid
                                          from agents
                                          where aid = 'a03')
                            )
              )
order by pid asc

-- Question 6
select name, discount
from customers
where cid in (select cid
              from orders
              where aid in (select aid
                            from agents
                            where city in ('Dallas', 'Duluth'))
              )
order by name asc

-- Question 7
select *
from customers
where discount in (select discount
                   from customers
                   where city in ('Dallas', 'Kyoto'))
order by cid asc