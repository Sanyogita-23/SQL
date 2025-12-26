mysql> use school;
Database changed
mysql> create table student(id int primary key,name varchar(50),age int,grade varchar(10));
Query OK, 0 rows affected (0.03 sec)

mysql> insert into student values(1,'Alice',15,'10th');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(2,'Bob',16,'11th');
Query OK, 1 row affected (0.00 sec)

mysql> insert into student values(3,'Charlie',14,'9th');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+----+---------+------+-------+
| id | name    | age  | grade |
+----+---------+------+-------+
|  1 | Alice   |   15 | 10th  |
|  2 | Bob     |   16 | 11th  |
|  3 | Charlie |   14 | 9th   |
+----+---------+------+-------+
3 rows in set (0.00 sec)

mysql> select name,age from student;
+---------+------+
| name    | age  |
+---------+------+
| Alice   |   15 |
| Bob     |   16 |
| Charlie |   14 |
+---------+------+
3 rows in set (0.00 sec)
mysql> update student set grade = '10th' where name = 'Charlie';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+----+---------+------+-------+
| id | name    | age  | grade |
+----+---------+------+-------+
|  1 | Alice   |   15 | 10th  |
|  2 | Bob     |   16 | 11th  |
|  3 | Charlie |   14 | 10th  |
+----+---------+------+-------+
3 rows in set (0.00 sec)

mysql> delete from student where id = 2;
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+----+---------+------+-------+
| id | name    | age  | grade |
+----+---------+------+-------+
|  1 | Alice   |   15 | 10th  |
|  3 | Charlie |   14 | 10th  |
+----+---------+------+-------+
2 rows in set (0.00 sec)

mysql> select count(*) as total_student from student;
+---------------+
| total_student |
+---------------+
|             2 |
+---------------+
1 row in set (0.00 sec)

mysql>