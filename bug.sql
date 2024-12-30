```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This SQL query might return unexpected results if there are employees in the `Sales` department with salaries exactly equal to 100000.  The `>` operator excludes this value.

Another less common but equally problematic error is implicit type conversion issues between data types. For example, comparing a string representation of a number against a numeric field can lead to unexpected results and obscure errors.