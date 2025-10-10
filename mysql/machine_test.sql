#SELECT * FROM `employee` WHERE leaves>5 AND department='sales';

#SELECT count(name) FROM employee WHERE department='operations';

#SELECT department,count(department) AS total_employees FROM employee GROUP BY department;

#SELECT department,sum(leaves) AS total_employee_leaves FROM employee GROUP BY department HAVING total_employee_leaves>10;

#SELECT name FROM employee WHERE id IN(SELECT employee_id FROM exam WHERE exam_status='pass');

#SELECT name FROM employee WHERE id NOT IN(SELECT employee_id FROM exam);


