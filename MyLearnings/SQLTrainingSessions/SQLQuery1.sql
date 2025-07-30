select * from employee_details;

--To add 2000 to the current salary
select emp_salary + 2000 as new_salary from employee_details;

--To substract 2000 from the current salary
select emp_salary - 2000 as new_salary from employee_details;

-- To double the current salary
select emp_salary * 2 as new_salary from employee_details;

select emp_id * emp_salary as result from employee_details where emp_id = 6;

--To make the salary by half for each employee
select emp_salary/2 as new_salary from employee_details;

--Using modulus operator
select emp_salary % emp_id as reminder from employee_details;

--To get the list employees whose salary is 46000
select * from employee_details where emp_salary = 46000;

--To get the list employees whose salary is not 45000
select * from employee_details where emp_salary <> 45000;

--To get the list employees whose salary is greater than 75000
select * from employee_details where emp_salary > 75000;

--To get the list employees whose salary is less than 75000
select * from employee_details where emp_salary < 75000;

--To get the list employees whose salary is greater than or equal to 76000
select * from employee_details where emp_salary >= 76000;

--To get the list employees whose salary is less than or equal to 46000
select * from employee_details where emp_salary <= 46000;

-- To access the emp_id and emp_name of those employees from the table whose salaries are greater than the salary of employees who lives in Delhi city
select emp_id, emp_name from employee_details where emp_salary > all (select emp_salary from employee_details where emp_city = 'Delhi');

-- To list the ProductName if it finds ANY records in the OrderDetails table has Quantity equal to 10 (this will return TRUE because the Quantity column has some values of 10):
select productName from products where productCode = any (select productCode from orderdetails where quantityordered=30);

-- To list the ProductName if ALL the records in the OrderDetails table has Quantity equal to 10. This will of course return FALSE because the Quantity column has many different values (not only the value of 10)
select productname from products where productCode = all (select productcode from orderdetails where quantityordered=30);

--To access all the records of employees from the employees details table whose salary is 46000 and the city is Delhi
select * from employee_details where emp_salary = 46000 and emp_city='Delhi';

--To access all the records of employees from the employees details table whose salary is 46000 or the city is Delhi
select * from employee_details where emp_salary = 45000 or emp_city='Delhi';

--To access all the information of those employees from the Employee_details table who is having salaries between 20000 and 40000
select * from employee_details where emp_salary between 20000 and 40000;

--To show all the information of those employees from the Employee_details table whose Employee Id is in the list of emp id's
select * from employee_details where emp_id in (1,2,3);

--To show all the information of those employees from the Employee_details table whose Employee Id is not in the list of emp id's
select * from employee_details where emp_id not in (3,4,5,6);

--To show all the information of those employees from the Employee_details table whose Cityis not Delhi
select * from employee_details where not emp_city ='Delhi';


--To show all the information of those employees from the Employee_details whose name starts with ''j''
select * from employee_details where emp_name like 'j%';

--To show all the information of those employees from the Employee_details whose name ends with ''n''
select * from employee_details where emp_name like '%n';


