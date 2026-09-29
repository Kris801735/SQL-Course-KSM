SELECT c.CustomerId,
       c.FirstName,
       c.LastName,
       c.city,
       c.Company
FROM   Customer AS C
where c.company is not null
--WHERE c.city IN ('London','Paris','rome','berlin')
--where c.lastname like'%R'
order by c.company asc

select top 3 
c.country,
count(*) as numberofcustomers
from customer as c
where c.company is null
GROUP BY c.Country
order by numberofcustomers DESC

--looking at invoices

SELECT 
       i.customerid,
      sum(i.total) as invoicetotal
FROM   invoice AS i
group by i.customerid
ORDER BY i.customerid;