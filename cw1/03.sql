select student,min(grade),max(grade),count(course) from exams group by student having avg(grade)>=75;
