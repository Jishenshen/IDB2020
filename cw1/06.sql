select sub.student,
sum(case when grade>=80 then 1 else 0 end) as A,
sum(case when grade>=60 and grade < 80 then 1 else 0 end) as B,
sum(case when grade>=40 and grade < 60 then 1 else 0 end) as C,
sum(case when grade<40 then 1 else 0 end) as D 
from (select e1.student, e1.grade from exams e1) as sub group by sub.student;
