# Experiment 3 - Task 1

Name: Tavjeet Singh

UID: 24BCS10329

## Aim

To count the number of students in each department who have scored more than 80 marks using CASE within COUNT.

## Question

Write a query to count the number of students across departments who have scored more than 80 marks. Alias the count column as `Dept_HighScore_Count`.

The `student` table columns:

- `St_id`
- `St_name`
- `Marks`
- `Department`

## SQL Queries Used

### Count high-scoring students per department

```sql
/* Write a query to count the number of students across departments who has scored more than 80 marks.*/

SELECT Department,
       COUNT(CASE WHEN Marks > 80 THEN 1 ELSE NULL END) AS Dept_HighScore_Count
FROM student
GROUP BY Department
ORDER BY Department;
```

## Output

```text
┌────────────┬──────────────────────┐
│ department │ Dept_HighScore_Count │
├────────────┼──────────────────────┤
│ Biology    │ 0                    │
│ English    │ 0                    │
│ History    │ 3                    │
│ Math       │ 4                    │
│ Physics    │ 4                    │
└────────────┴──────────────────────┘
```

## Output Screenshot

![Experiment 2 Task 4 Output](Screenshot%203.1.png)

## Image Explanation

The query groups students by `Department`, counts rows where `Marks > 80` using a `CASE` expression (counting 1 for true, NULL otherwise), and returns the count as `Dept_HighScore_Count` for each department.

## Result

The SQL query correctly counts students scoring above 80 per department and produces the expected counts.
