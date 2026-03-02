--sub query
select firstName, lastName, monthlySalary
from staff
where monthlySalary>(select avg(monthlySalary)from staff)

--group by
select routeID, count(*) as amountOfRoutes
from trainRoute
group by routeID
having count(*)>=1