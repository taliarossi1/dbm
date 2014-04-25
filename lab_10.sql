-- Talia Rossi --
-- 4/25/2014 --
-- Lab 10: Stored Procedure --

-- I fiddled around with the sql, but couldn't get the stored procedure to work properly--

                        
create or replace function PreReqsFor(int, REFCURSOR) returns refcursor as 
$$
declare
   course_num int         := $1;
   resultset   REFCURSOR  := $2;
begin
  open resultset for 
      select num
      from  Courses
      where  num in(select preReqNum
                          from Prerequisites
                          where preReqNum = course_num
                          );
                       
   return course_num;
end;
$$ 
language plpgsql;

select PreReqsFor(220, 'results');







