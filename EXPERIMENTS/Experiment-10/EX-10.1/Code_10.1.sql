SELECT emp_id, emp_name, salary
FROM employee
WHERE salary IN (
	SELECT salary
	FROM (
		SELECT DISTINCT salary,
			   DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
		FROM employee
	) ranked_salaries
	WHERE salary_rank IN (2, 3)
)
ORDER BY salary DESC;
