# Experiment 2 - Task 4

Name: Tavjeet Singh

UID: 24BCS10329

## Aim

To find the fruits present in the fruit table but not present in the inventory table using EXCEPT.

## Question

Consider the same supermarket database used in the previous problem.

Write a query to output the name of the fruits (f_name) from the table 'fruit' which are not present in the table inventory.

The f_name column has the name of the fruits and inv_name has the name of the items in inventory.

## SQL Queries Used

### Find Fruits Not Present in Inventory

```sql
/* Write a query to output the name of the fruits (f_name) from the table 'fruit' which are not present in the table inventory(f_name column has the name of the fruits and inv_name has the name of the items in inventory). */

SELECT f_name FROM fruit
EXCEPT
SELECT inv_name FROM inventory;
```

## Output

```text
┌────────┐
│ f_name │
├────────┤
│ Apple  │
│ Mango  │
│ Orange │
└────────┘
```

## Output Screenshot

![Experiment 2 Task 4 Output](Screenshot%202.4.png)

## Image Explanation

The screenshot shows the EXCEPT query executed in the SQL editor. The output contains only the fruits that are in the fruit table but missing from the inventory table, which matches the task requirement.

## Result

The fruits not present in the inventory table were retrieved successfully using EXCEPT.
