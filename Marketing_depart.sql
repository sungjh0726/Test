select e.last_name, e.salary, d.department_name
  from employees e inner join departments d on e.department_id= d.department_id
  where department_name =  'Marketing'
and e.salary < (select round(avg(salary)) from employees where department_id= 80);
