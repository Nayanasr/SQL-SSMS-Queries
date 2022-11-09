CREATE TABLE DEPARTMENT_INFO(
DEP_ID [INT] PRIMARY KEY,
DEP_NAME [VARCHAR](30));

CREATE TABLE EMPLOYEE_INFO(
EMP_ID [INT] PRIMARY KEY,
EMP_NAME [VARCHAR] (30) NOT NULL,
EMAIL [VARCHAR](30),
MOBILE [BIGINT],
DESIGNATION [VARCHAR](30),
DOJ [DATE],
SALARY [INT],
DOB [DATE],
AGE [INT],
CHECK(AGE>18),
DEP_ID [INT] FOREIGN KEY REFERENCES DEPARTMENT_INFO(DEP_ID),
GOVT_ID [VARCHAR](30),
GENDER [VARCHAR](10) NOT NULL,
STATUS [VARCHAR](30),
EXPE [INT]);

select * from DEPARTMENT_INFO;

INSERT INTO EMPLOYEE_INFO(EMP_ID,EMP_NAME,EMAIL,MOBILE,DESIGNATION,DOJ,SALARY,DOB,AGE,DEP_ID ,GOVT_ID,GENDER,STATUS,EXPE)
VALUES(1,'ANUDEEP','ANUDEEP@GMAIL.COM',12345678,'SOFTWARE DEVELOPER','2015-12-31',10000,'2000-5-12',22,10,'101','MALE','ONLINE',5),
(2,'PRADEEP','PRADEEP@GMAIL.COM',129745678,'TESTER','2016-12-31',20000,'2000-7-12',22,20,'102','MALE','OFFLINE',6),
(3,'DEEPALI','DEEPALI@GMAIL.COM',124745678,'ADMIN','2018-1-1',16000,'2001-7-12',21,30,'103','FEMALE','OFFLINE',4),
(4,'CHANDHANA','CHANDHANA@GMAIL.COM',9824567820,'TESTER','2018-1-1',18000,'2001-9-12',21,10,'104','FEMALE','ONLINE',4),
(5,'ROHAN','ROHAN@GMAIL.COM',9824087820,'ADMIN','2018-12-31',18000,'2000-9-12',21,40,'105','MALE','ONLINE',4);

SELECT * FROM EMPLOYEE_INFO;





/*--queryto display all the record of employee who is working as software developer and belongs to dept number 10
40)select * from employee where designation="software developer" and dept_id=10;*/
SELECT * FROM EMPLOYEE_INFO WHERE DESIGNATION='SOFTWARE DEVELOPER' AND DEP_ID=10 ;
--write a query to display all record of employee  who is working in dept number 20 and employee salary should be more than 5 thousand 
/41) select * from employee where dept_id=20 and salary>5000;/
select * from EMPLOYEE_INFO where DEP_ID=20 and SALARY>5000;
--write a query to display all record of employee excluding tester
/42) select * from employee where not designation="tester";/
select * from EMPLOYEE_INFO where not DESIGNATION='TESTER';
--write a query to display all record of developer hired after 2015
 /43)select * from employee where doj > "2015-12-31" and designation="software developer";/
 select * from EMPLOYEE_INFO where DOJ > '2015-12-31' and DESIGNATION='SOFTWARE DEVELOPER';
 ---write name of all the employee working as tester as well as dept no 10 or employee who is working as clerk select salary is greater than 15k
 /* 44) select * from employee where designation="tester" and dept_id="10" OR designation="admin" and salary>15000;*/
 select * from EMPLOYEE_INFO where DESIGNATION='TESTER' and DEP_ID=10 OR DESIGNATION='ADMIN' and SALARY>15000;
  --write name of all the employee working in dept no 10 20 30 40 
  /*45) select * from employee where dept_id=10 || dept_id=20||dept_id=30||dept_id=40;
                        OR
  select * from table_name where columnname in (value1,value2,value3);*/
  select * from EMPLOYEE_INFO where DEP_ID=10 OR DEP_ID=20 OR DEP_ID=30 OR DEP_ID=40;
  
  select * from EMPLOYEE_INFO where DEP_ID in (10,20,30,40);
--wrqtd the detail of  admin or software developer or tester and working in dept no 10 20 30
 /46) select * from employee where designation in ("software developer","tester","admin") and dept_id in (10,20,30);/
 select * from EMPLOYEE_INFO where DESIGNATION in ('SOFTWARE DEVELOPER','TESTER','ADMIN') and DEP_ID in (10,20,30);
-- w q to display exculding all the employee working in 20 30 40
 /47) select * from employee where dept_id not in (20,30,40);/
 select * from EMPLOYEE_INFO where DEP_ID not in (20,30,40);
--between
/*write a q to display all the records whos salary lies in between 10k to 20k
 48) select * from employee where salary>10000 and salary<20000;*/
 select * from EMPLOYEE_INFO where SALARY between 10000 and 20000;
 --waqtd  all record of employee who were hired during 2018
/49)  select * from employee where doj between "2018-01-01" and "2018-12-31";/
select * from EMPLOYEE_INFO where DOJ between '2018-01-01' and '2018-12-31';
 --not hired during 2018
 select * from EMPLOYEE_INFO where DOJ not between '2018-01-01' and '2018-12-31';
 ---waqtd all recordting exculding whose salary range is in between 25000 and 35000?
 select * from EMPLOYEE_INFO where SALARY not between 20000 and 35000; 
 --null
  --52)select * from table_name where columnname is null;
  --select * from table_name where columnname is not null;
  select * from EMPLOYEE_INFO where SALARY is null;
  select * from EMPLOYEE_INFO where SALARY is not null

  --like is used for pattern matching
 /*select * from table_name where columnname like "%/_";
  %  => when length of character literals is not known we make use of %  it matches pattern from one to n characters where n is unknown
  _  => matches only single character.
  --53)waqtd all record of employee whose name starts with s
   select * from employee where name like "s%";*/
   select * from EMPLOYEE_INFO where EMP_NAME like 'S%';
   --54)waqtd whos name having atleast 2 a?
   select * from EMPLOYEE_INFO where EMP_NAME like '%A%A%';
   --55)waqtd all record of employee whose name ha two consecuitive ll?
    select * from EMPLOYEE_INFO where EMP_NAME like '%LL%';
    --56)waqtd all record of employee whose third character should have i ?
    select * from EMPLOYEE_INFO where EMP_NAME like '__i%';
    --57)waqtd all record of employee whose name having four characters?
    select * from EMPLOYEE_INFO where EMP_NAME like '__';
    -- not like
    --58)waqtd all the record of employees exculding whose name starts with z?
     select * from EMPLOYEE_INFO where EMP_NAME not like 'z%';
     --ANY exit  
     --59)waqtd sum of all salaries of emplyee?
     select sum(SALARY) AS SALARY from EMPLOYEE_INFO;
      --60) waqtd count of number of employee?
      select count(EMP_NAME) from EMPLOYEE_INFO;
      --61)waqtd avg of salary?
      select avg(SALARY) from EMPLOYEE_INFO;
    ------singlerow functions-----
      --r & d list of single row functions
--      upper() lower() length() concat() reverse()
/SCALAR FUNCTIONS - UPPER LOWER LEN CONCAT REVERSE/

SELECT UPPER(EMP_NAME) AS UPPERCASE_NAME FROM EMPLOYEE_INFO;

SELECT LOWER(EMP_NAME) AS LOWERCASE_NAME FROM EMPLOYEE_INFO;

SELECT CONCAT(EMP_NAME,'AS',DESIGNATION) AS CONCATE_NAME_EMAIL FROM EMPLOYEE_INFO

SELECT LEN(EMP_NAME) AS LENGTH_NAME FROM EMPLOYEE_INFO;

SELECT REVERSE(EMP_NAME) AS REVERSE_SALARY FROM EMPLOYEE_INFO;
--CLAUSE select from where
--group by
--Select * from table_name where condition group by columnname;
--62)waqtd maximum salary in each dept
Select MAX(SALARY) from EMPLOYEE_INFO  group by DEP_ID;
--63)waqtd number of tester working in each department
 select DEP_ID,count(DEP_ID),DESIGNATION from EMPLOYEE_INFO where DESIGNATION='TESTER' group by DEP_ID,DESIGNATION;
--64)waqtd no of count of employee who has joined on same date
 select count(DOJ),DOJ from EMPLOYEE_INFO group by DOJ;
--65)waqtd total salary of is greater than 20k
SELECT * FROM EMPLOYEE_INFO WHERE SALARY>15000 ORDER BY SALARY;
--Order by
--SELECT COLUMN1,column2 from table_name 
--order by column1 column2 asc/desc;
--66)waqtd all record of employee on basis of salary
select * from EMPLOYEE_INFO order by SALARY asc;