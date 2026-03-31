select  p.project_id ,round(avg(e.experience_years),2) as average_years 
from Project p
join Employee e
on p.employee_id=e.employee_id
group by p.project_id

 -- Learnings Here
 --  round(av_value(),2) >> upto 2 decimal
 