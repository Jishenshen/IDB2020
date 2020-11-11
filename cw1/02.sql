select count(degree) from students s,degrees d where s.degree=d.code and d.type='PG';
