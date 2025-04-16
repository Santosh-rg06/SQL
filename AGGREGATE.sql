/* AGGREGATE FUNCTIONS

THIS ARE THE FUNCTION SET ODF VALUE AND RETURN A SINGLE VALUE.

COUNT()
MAX()
MIN()
SUM()
AVG()
		*/
        
select max(marks) from student;
select min(marks) from student;
select avg(marks) from student;

select count(rollno) from student;

select sum(marks) from student;

/* GROUP BY CLAUSE

select city, avg(marks) from student group by city;
select city, count(rollno) from student group by city;


/* PRATICE QUCTIONS ? write the query find avg marks in each city in ascending order.*/

select city, avg(marks) from student group by city order by city;

   /* PRATICE  THE GIVEN FIND THE TOTAL PAYMANT TO EACH TO EACH PAYMENT METHOD

    
    
    
    

