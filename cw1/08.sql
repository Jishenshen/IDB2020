select course from (select * from programmes p1 inner join degrees d1 on p1.degree=d1.code and d1.type='PG') as subquery group by subquery.course having count(subquery.course)=1;
