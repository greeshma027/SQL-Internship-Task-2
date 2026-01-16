show databases;
+--------------------+
| Database           |
+--------------------+
| csda               |
| information_schema |
| intern_training_db |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.00 sec)

mysql> use intern_training_db;
Database changed
mysql> CREATE TABLE students (
    ->     student_id INT PRIMARY KEY,
    ->     name VARCHAR(100) NOT NULL,
    ->     email VARCHAR(100) UNIQUE,
    ->     date_of_birth DATE NOT NULL,
    ->     phone VARCHAR(15)
    ->     student_id INT PRIMARY KEY,
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'student_id INT PRIMARY KEY,
)' at line 7
mysql> INSERT INTO students VALUES
    -> (1, 'Rahul Sharma', 'rahul@gmail.com', '2002-05-14', '9876543210');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> CREATE TABLE students1 (
    -> student_id INT PRIMARY KEY,
    ->     name VARCHAR(100) NOT NULL,
    ->     email VARCHAR(100) NOT NULL UNIQUE,
    ->     date_of_birth DATE NOT NULL,
    ->     gender CHAR(1)
    -> );
Query OK, 0 rows affected (0.12 sec)

mysql> INSERT INTO students1
    -> (student_id, name, email, date_of_birth, gender)
    -> VALUES
    -> (1, 'Sruthi Guvva', 'sruthi@gmail.com', '2002-05-12', 'F');
Query OK, 1 row affected (0.01 sec)

mysql> ALTER TABLE students1
    -> ADD phone_number VARCHAR(15);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE students1
    -> RENAME COLUMN phone_number TO mobile_number;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc students1;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| student_id    | int          | NO   | PRI | NULL    |       |
| name          | varchar(100) | NO   |     | NULL    |       |
| email         | varchar(100) | NO   | UNI | NULL    |       |
| date_of_birth | date         | NO   |     | NULL    |       |
| gender        | char(1)      | YES  |     | NULL    |       |
| mobile_number | varchar(15)  | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

mysql> select * from students1;
+------------+--------------+------------------+---------------+--------+---------------+
| student_id | name         | email            | date_of_birth | gender | mobile_number |
+------------+--------------+------------------+---------------+--------+---------------+
|          1 | Sruthi Guvva | sruthi@gmail.com | 2002-05-12    | F      | NULL          |
+------------+--------------+------------------+---------------+--------+---------------+
1 row in set (0.00 sec)