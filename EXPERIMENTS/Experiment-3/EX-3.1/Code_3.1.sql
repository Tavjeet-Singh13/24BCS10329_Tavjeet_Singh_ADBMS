/* Write a query to count the number of students across departments who has scored more than 80 marks.*/

select department,count(CASE WHEN Marks > 80 THEN 1 ELSE NULL END) AS Dept_HighScore_Count
from student
group by department;
