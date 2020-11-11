select distinct uun from students s where not exists (select * from exams e where e.student = s.uun);
