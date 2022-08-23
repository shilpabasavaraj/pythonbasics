#create database mysql_test;
#use sales;
#show tables;
#select power(2,3) as power;

#select mod(10,3) ;

#select sqrt(144)as sr;
#select least(2,5,6,8) as least;
#select abs(-34.89);
#select truncate(22.6787,3) as roundoff
#select round(22.7834,1) as r










#select greatest(2,5,6,8) (least)

#select truncate(22.6787,2)

/*
use world;
CREATE TABLE student 
(
stu_id varchar(10)  primary key,
stu_name varchar(25) ,
age int,
gender char(1),
doa date,
city varchar(10)
); 
#INSERT INTO student VALUES(04,'PRADEEP',36,"M","2016-12-03","delhi"),(06,'ASHOK',28,"m","2013-2-03","bang");
*/


# select  customerName  as cname from customers;
# where clause:

#select customerName  as cname from customers where creditLimit > 21000;
# select column1,column2 from tablename;
#select * from customers;
# and or not

#select customerName from customers where city = "Nantes" and country = "France";

# distinct clause :
#select count(distinct city) as cities  from customers;

#select concat(contactFirstName,'',contactLastName)as full_name
# limit :

# FIRST_NAME from emp limit 3 offset 2;

#select avg(SALARY) as sal from emp;
#select * from customers where city  = 'Nantes' or city = 'NYC'; 
#select * from customers where city in ('Nantes','NYC');

#select * from customers where city in('NYC','Chicago');

#select * from customers where creditLimit between 11111 and 34345;

#select count(*) from emp where COMMISSION_PCT is  null;
#select max(SALARY) as highsalary from emp;

#select city,sum(creditLimit) as total from customers group by city;
#select FIRST_NAME from emp order by FIRST_NAME;

#select customerNumber from customers order by customerNumber desc;
#select length('india') as length; 
#select upper('india') as up; 
select now();


# extract a day from date :
#lect day(current_date()) as today;


#groupby and having difference :
# groupby statement  groups records into summary rows and  returns  one record for rach group
# select column_name from table_name  where condition group by  columnname.columnname
#he count of employees in each  departement?

select DEPARTMENT_ID,count(employee_id)  as totalemp from emp  group by DEPARTMENT_ID;


# employees who have joined the company each year
#select HIRE_DATE,EMPLOYEE_ID from emp group by (HIRE_DATE);
# find the cities  where there are more than 2 employees?
select city,count(customerNumber ) as cus from customers group by city;

# like clause: work only on sql and oracle
#SELECT customerName,country FROM Customers WHERE country LIKE 'U[KA]%';
#select customerName,country  from customers  where country LIKE 'U%'		
#select FIRST_NAME,HIRE_DATE from emp group by FIRST_NAME having HIRE_DATE >'26-OCT-05'	

#WHERE CustomerName LIKE '%or%'	



#select customerName,city from customers limit 4


#select customerName,contactFirstName from customers limit 3 offset 2

#select FIRST_NAME,DEPARTMENT_ID FROM EMP where DEPARTMENT_ID IN(50,100)


#The IN operator is used with the WHERE clause to match values in a list.

#select customerName,city from customers  where city in('Nantes','Las Vegas')


#select firstname from employees where officeCode in(2,6);

#  SQL in with columns The IN operator is used with the WHERE clause to match values in a list.

#select lastName from employees where 'Sales Rep' in (jobTitle)
#select customerName,city from customers where city  not in ('Aachen','Auckland')

/*SELECT first_name, country
FROM Customers
WHERE country IN ('USA', 'UK', 'USA');

SELECT first_name, country
FROM Customers
WHERE country IN ('USA', 'UK');
*/

# sql with subquery:
#select customerNumber,customerName from customers where customerNumber in(select customerNumber from orders)


# sql between opeartor:The BETWEEN operator is used with the 
#WHERE clause to match values in a range. 

#SELECT col1, col2
#ROM table
#WHERE col1 BETWEEN 300 AND 500;

/*
SELECT item, amount
FROM Orders
WHERE amount NOT BETWEEN 300 AND 500;
*/

#The IS NULL condition is used to select rows if the specified field is NULL.
#SELECT * FROM Employee WHERE email IS NULL;

#SELECT *
#FROM employees
#WHERE email IS NOT NULL;


#SELECT MAX(age)
#FROM customers;

#SELECT MAX(creditLimit)
#FROM Customers;

#SELECT MAX(priceEach) AS max_price
#FROM Customers;
/*FROM orderdetails
WHERE priceEach = (SELECT MIN(priceEach)FROM orderdetails
);
*/

#The COUNT() function returns the number of rows in the result set.
#select count(productCode) from orderdetails

# count of customers whose counutry is france
#select count(customerName) from customers where country = 'USA'


#COUNT() with DISTINCT

# count(distinct country) from customers;

#COUNT() with GROUP BY

# number of customers in every country
#select country,count(*) as cust  from customers group by  country
/*select count(customerNumber) as totalcust,country 
from customers 
group by country 
having count(customerNumber) >10;
*/
#select * from emp where EMPLOYEE_ID is not null;


#select count(*) from emp where PHONE_NUMBER is null

#select count(*)  as total from customers where country = 'USA'

#select sum(salary) as total from emp;

# order by clause
#select * from emp order by FIRST_NAME desc;

/*SQL Join statement is used to combine data or rows from two or more tables
based on a common field between them. Different types of Joins are as follows:
INNER JOIN
LEFT JOIN
RIGHT JOIN
FULL JOIN


The INNER JOIN keyword selects all rows from both the tables as long as 
the condition is satisfied. This keyword will create the result-set by
 combining all rows from both the tables where the condition satisfies
 i.e value of the common field will be the same. 

Syntax: 

SELECT table1.column1,table1.column2,table2.column1,....
FROM table1 
INNER JOIN table2
ON table1.matching_column = table2.matching_column;


LEFT join returns all the rows of the table on the left side of the join 
and matches rows for the table on the right side of the join.
 For the rows for which there is no matching row on the right side, 
 the result-set will contain null. LEFT JOIN is also known as LEFT OUTER JOIN.

Syntax: 

SELECT table1.column1,table1.column2,table2.column1,....
FROM table1 
LEFT JOIN table2
ON table1.matching_column = table2.matching_column;
FULL JOIN creates the result-set by combining results of both LEFT JOIN and RIGHT JOIN. The result-set will contain all the rows from both tables. For the rows for which there is no matching, the result-set will contain NULL values.


