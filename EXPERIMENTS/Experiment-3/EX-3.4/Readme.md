# Experiment 3 - Task 4

Name: Tavjeet Singh

UID: 24BCS10329

## Aim

To find the names and bonus amounts of employees who either received a bonus less than 1000 or did not receive any bonus.

## Question

Write a solution to report the name and bonus amount of each employee who satisfies either of the following:

- The employee has a bonus less than 1000.
- The employee did not get any bonus.

## SQL Queries Used

### Find employees with bonus less than 1000 or no bonus

```sql
SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;
```

## Output

```text
+------+-------+
| name | bonus |
+------+-------+
| Brad | null  |
| John | null  |
| Dan  | 500   |
+------+-------+
```

## Output Screenshot

![Experiment 3 Task 4 Output](Screenshot%203.4.png)

## Image Explanation

The screenshot shows the result of a `LEFT JOIN` between `Employee` and `Bonus`, filtered to keep employees whose bonus is below 1000 or missing. This returns the required employee names with their bonus values.

## Result

The SQL query correctly returns employees who either have a bonus less than 1000 or have no bonus at all.
