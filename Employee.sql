mysql> create database example;
Query OK, 1 row affected (0.01 sec)

mysql> use example;
Database changed
mysql> create table employee( emp_id int ,emp_name varchar(50) ,salary int, dept_id int);
Query OK, 0 rows affected (0.03 sec)

mysql> create table department(dept_id int ,dept_name varchar(50));
Query OK, 0 rows affected (0.02 sec)

mysql> insert into employee values (1,'Amit',50000,101);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values (2,'Neha',60000,102);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employee values (3,'Rahul',45000,103);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employee values (4,'Pooja',70000,104);
Query OK, 1 row affected (0.00 sec)

mysql> select * from employee;
+--------+----------+--------+---------+
| emp_id | emp_name | salary | dept_id |
+--------+----------+--------+---------+
|      1 | Amit     |  50000 |     101 |
|      2 | Neha     |  60000 |     102 |
|      3 | Rahul    |  45000 |     103 |
|      4 | Pooja    |  70000 |     104 |
+--------+----------+--------+---------+
4 rows in set (0.00 sec)

mysql> insert into department values (101,'HR');
Query OK, 1 row affected (0.01 sec)

mysql> insert into department values (102,'IT');
Query OK, 1 row affected (0.00 sec)

mysql> insert into department values (103,'Finance');
Query OK, 1 row affected (0.00 sec)

mysql> insert into department values (104,'IT');
Query OK, 1 row affected (0.00 sec)

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|     101 | HR        |
|     102 | IT        |
|     103 | Finance   |
|     104 | IT        |
+---------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name , salary from employee;
+----------+--------+
| emp_name | salary |
+----------+--------+
| Amit     |  50000 |
| Neha     |  60000 |
| Rahul    |  45000 |
| Pooja    |  70000 |
+----------+--------+
4 rows in set (0.00 sec)

mysql> select dept_name from department;
+-----------+
| dept_name |
+-----------+
| HR        |
| IT        |
| Finance   |
| IT        |
+-----------+
4 rows in set (0.00 sec)

mysql> select * from employee where salary >50000;
+--------+----------+--------+---------+
| emp_id | emp_name | salary | dept_id |
+--------+----------+--------+---------+
|      2 | Neha     |  60000 |     102 |
|      4 | Pooja    |  70000 |     104 |
+--------+----------+--------+---------+
2 rows in set (0.00 sec)

mysql> select * from employee where salary <=60000;
+--------+----------+--------+---------+
| emp_id | emp_name | salary | dept_id |
+--------+----------+--------+---------+
|      1 | Amit     |  50000 |     101 |
|      2 | Neha     |  60000 |     102 |
|      3 | Rahul    |  45000 |     103 |
+--------+----------+--------+---------+
3 rows in set (0.00 sec)

mysql> select * from employee where salary > 45000 AND dept_id = 102;
+--------+----------+--------+---------+
| emp_id | emp_name | salary | dept_id |
+--------+----------+--------+---------+
|      2 | Neha     |  60000 |     102 |
+--------+----------+--------+---------+
1 row in set (0.00 sec)

mysql> select * from employee where emp_id = 3 AND dept_id = 103;
+--------+----------+--------+---------+
| emp_id | emp_name | salary | dept_id |
+--------+----------+--------+---------+
|      3 | Rahul    |  45000 |     103 |
+--------+----------+--------+---------+
1 row in set (0.00 sec)

mysql> select * from employee where emp_id  = 3 OR dept_id = 103;
+--------+----------+--------+---------+
| emp_id | emp_name | salary | dept_id |
+--------+----------+--------+---------+
|      3 | Rahul    |  45000 |     103 |
+--------+----------+--------+---------+
1 row in set (0.00 sec)

mysql> select * from employee where salary = 45000 OR salary = 60000;
+--------+----------+--------+---------+
| emp_id | emp_name | salary | dept_id |
+--------+----------+--------+---------+
|      2 | Neha     |  60000 |     102 |
|      3 | Rahul    |  45000 |     103 |
+--------+----------+--------+---------+
2 rows in set (0.00 sec)

mysql> select * from employee where salary > 45000 AND salary < 60000;
+--------+----------+--------+---------+
| emp_id | emp_name | salary | dept_id |
+--------+----------+--------+---------+
|      1 | Amit     |  50000 |     101 |
+--------+----------+--------+---------+
1 row in set (0.00 sec)

mysql> select * from employee order by salary desc;
+--------+----------+--------+---------+
| emp_id | emp_name | salary | dept_id |
+--------+----------+--------+---------+
|      4 | Pooja    |  70000 |     104 |
|      2 | Neha     |  60000 |     102 |
|      1 | Amit     |  50000 |     101 |
|      3 | Rahul    |  45000 |     103 |
+--------+----------+--------+---------+
4 rows in set (0.00 sec)

mysql> select * from employee order by salary asc;
+--------+----------+--------+---------+
| emp_id | emp_name | salary | dept_id |
+--------+----------+--------+---------+
|      3 | Rahul    |  45000 |     103 |
|      1 | Amit     |  50000 |     101 |
|      2 | Neha     |  60000 |     102 |
|      4 | Pooja    |  70000 |     104 |
+--------+----------+--------+---------+
4 rows in set (0.00 sec)

mysql> update employee set salary = 55000 where emp_id = 3;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+--------+----------+--------+---------+
| emp_id | emp_name | salary | dept_id |
+--------+----------+--------+---------+
|      1 | Amit     |  50000 |     101 |
|      2 | Neha     |  60000 |     102 |
|      3 | Rahul    |  55000 |     103 |
|      4 | Pooja    |  70000 |     104 |
+--------+----------+--------+---------+
4 rows in set (0.00 sec)

mysql> update department set dept_name = 'HR' where dept_id = 4;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|     101 | HR        |
|     102 | IT        |
|     103 | Finance   |
|     104 | IT        |
+---------+-----------+
4 rows in set (0.00 sec)

mysql> delete from employee where emp_id = 4;
Query OK, 1 row affected (0.00 sec)

mysql> select * from employee;
+--------+----------+--------+---------+
| emp_id | emp_name | salary | dept_id |
+--------+----------+--------+---------+
|      1 | Amit     |  50000 |     101 |
|      2 | Neha     |  60000 |     102 |
|      3 | Rahul    |  55000 |     103 |
+--------+----------+--------+---------+
3 rows in set (0.00 sec)

mysql> delete from department where dept_id = 104;
Query OK, 1 row affected (0.00 sec)

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|     101 | HR        |
|     102 | IT        |
|     103 | Finance   |
+---------+-----------+
3 rows in set (0.00 sec)

mysql> select count(*) from employee;
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.00 sec)

mysql> select count(*) from department;
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.00 sec)

mysql> select sum(salary) from employee;
+-------------+
| sum(salary) |
+-------------+
|      165000 |
+-------------+
1 row in set (0.00 sec)

mysql> select avg(salary) from employee;
+-------------+
| avg(salary) |
+-------------+
|  55000.0000 |
+-------------+
1 row in set (0.00 sec)

mysql> select max(salary), min(salary) from employee;
+-------------+-------------+
| max(salary) | min(salary) |
+-------------+-------------+
|       60000 |       50000 |
+-------------+-------------+
1 row in set (0.00 sec)

mysql> select dept_id , avg(salary) from employee group by dept_id;
+---------+-------------+
| dept_id | avg(salary) |
+---------+-------------+
|     101 |  50000.0000 |
|     102 |  60000.0000 |
|     103 |  55000.0000 |
+---------+-------------+
3 rows in set (0.00 sec)

mysql> select salary ,count(*) from employee group by salary having count(*) < 45000;
+--------+----------+
| salary | count(*) |
+--------+----------+
|  50000 |        1 |
|  60000 |        1 |
|  55000 |        1 |
+--------+----------+
3 rows in set (0.00 sec)

mysql> select salary from employee group by salary having salary >= 50000;
+--------+
| salary |
+--------+
|  50000 |
|  60000 |
|  55000 |
+--------+
3 rows in set (0.00 sec)

mysql> select emp_name , dept_name from employee inner join department on employee.dept_id = department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Amit     | HR        |
| Neha     | IT        |
| Rahul    | Finance   |
+----------+-----------+
3 rows in set (0.00 sec)

mysql> select emp_name , dept_name from employee left join department on employee.dept_id = department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Amit     | HR        |
| Neha     | IT        |
| Rahul    | Finance   |
+----------+-----------+
3 rows in set (0.00 sec)

mysql> select emp_name from employee where salary > (select avg(salary) from employee);
+----------+
| emp_name |
+----------+
| Neha     |
+----------+
1 row in set (0.00 sec)

mysql> select * from employee where emp_name like 'A%';
+--------+----------+--------+---------+
| emp_id | emp_name | salary | dept_id |
+--------+----------+--------+---------+
|      1 | Amit     |  50000 |     101 |
+--------+----------+--------+---------+
1 row in set (0.00 sec)
mysql> select * from employee where salary between 45000 and 60000;
+--------+----------+--------+---------+
| emp_id | emp_name | salary | dept_id |
+--------+----------+--------+---------+
|      1 | Amit     |  50000 |     101 |
|      2 | Neha     |  60000 |     102 |
|      3 | Rahul    |  55000 |     103 |
+--------+----------+--------+---------+
3 rows in set (0.00 sec)

mysql> select * from employee where dept_id in (101,103);
+--------+----------+--------+---------+
| emp_id | emp_name | salary | dept_id |
+--------+----------+--------+---------+
|      1 | Amit     |  50000 |     101 |
|      3 | Rahul    |  55000 |     103 |
+--------+----------+--------+---------+
2 rows in set (0.00 sec)

mysql>