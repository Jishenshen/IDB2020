select e1.student from exams e1 group by student having (select count(grade) from exams e2 where e2.grade<40 and e1.student=e2.student)>count(e1.course)*0.3;
