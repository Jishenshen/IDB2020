(select d1.code, sum(subquery.credits) as credits from degrees d1, (select p1.degree,c1.credits from programmes p1, courses c1 where p1.course=c1.code order by p1.degree) as subquery where subquery.degree=d1.code group by d1.code) union (SELECT d1.code, 0 AS credits from degrees d1 where not exists (select p1.degree from programmes p1 where d1.code=p1.degree));