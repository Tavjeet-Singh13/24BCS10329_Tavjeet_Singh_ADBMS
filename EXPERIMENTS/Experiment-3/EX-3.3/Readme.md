# Experiment 3 - Task 3

Name: Tavjeet Singh

UID: 24BCS10329

## Aim

To find all customers who never placed an order using a subquery.

## Question

Write a solution to find all customers who never order anything from the `Customers` and `Orders` tables.

## SQL Queries Used

### Find customers who never ordered anything

```sql
SELECT name AS Customers
FROM Customers
WHERE id NOT IN (SELECT customerId FROM Orders);
```

## Output

```text
| Customers |
|-----------|
| Henry     |
| Max       |
```

## Output Screenshot

![Experiment 3 Task 3 Output](Screenshot%203.3.png)

## Image Explanation

The query selects customer names from `Customers` whose `id` does not appear in the `Orders.customerId` column, so only customers without any orders are returned.

## Result

The SQL query correctly returns all customers who never placed an order.
