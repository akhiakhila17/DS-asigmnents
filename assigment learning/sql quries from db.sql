***************create, update, delete, limit, count,min,max**************
create table employee(emp_id int, emp_name varchar(250),emp_salary int, primary key(emp_id));

select * from employee;

insert into employee values(105,'AKHI',50000);

update employee set emp_salary=20000 where emp_id=101;

delete from employee where emp_id=101;

select distinct emp_name from employee;

select count(distinct emp_name) from employee;
select emp_salary from employee where emp_id=103;
select * from employee order by emp_salary asc;(desc)

select * from employee limit 2;
select * from employee order by emp_id desc limit 1;
select * from employee order by emp_id asc limit 1;

select min(emp_salary) as minimum from employee;
select max(emp_salary) as maximum from employee;
select avg(emp_salary) from employee;
select count(emp_id)from employee;
select sum(emp_salary) from employee;

select * from employee where emp_name like '_a%';
select * from employee where emp_name like '%AK%';
select * from employee where emp_salary IN (50000);
select * from employee where emp_salary between 30000 and 50000;



*******************joins*******************
create table student1(stu_id int primary key,stu_name varchar(50),stu_subj varchar(10),stu_marks int);

select * from student;
insert into student1 values(3,'sam','telugu',47);
select * from student1;

ALTER TABLE student Alter column stu_subj type varchar(10);
ALTER TABLE student1 rename column stud_marks to stu_marks ;

update student set stu_marks=48 where stu_name='sam';
delete from student where stu_subj='hindi';


select * from student inner join  student1 on student.stu_marks=student1.stu_marks;

 select * from student left join student1 on student.stu_marks=student1.stu_marks;
select * from student right join student1 on student.stu_marks=student1.stu_marks;
select * from student full join student1 on student.stu_marks=student1.stu_marks;
****************union and intersection*********

select  stu_name,stu_id,stu_marks from student union select stu_name,stu_id,stu_marks from student1 ;
select stu_name,stu_id,stu_marks from student intersect select stu_name,stu_id,stu_marks from student1;

select stu_id,stu_name from student where exists (select * from student1 where stu_name='june');
select * from student where stu_id = any(select stu_id from student1 where stu_subj='maths');
select * from student where stu_id > all(select stu_id from student1 where stu_marks=44);
select * from student where stu_id = any (select stu_id from student1 where stu_marks=44);
select * from student order by stu_name;
select count(stu_id),stu_marks from student group by stu_marks order by count(stu_id);















