insert into salary(depname,empno,salary)
values(develop,11,5200),
(develop,7,4200),
(develop,9,4500),
(develop,8,6000),
(develop,10,5200),
(personnel,5,3500),
(personnel,2,3900),
(sales,3,4800),
(sales,1,5000),
(sale,4,4800);

select * from salary;
SELECT empno
FROM salaries
ORDER BY salary DESC
LIMIT 1;