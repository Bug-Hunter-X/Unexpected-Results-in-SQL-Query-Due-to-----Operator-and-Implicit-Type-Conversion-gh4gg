```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary >= 100000;
```
To prevent implicit type conversion issues, explicitly cast the string value to the correct numeric type or ensure that the data in the database is consistently stored as the correct numeric type.  For example, if the `department` column is a string that could contain spaces or other non-alphanumeric characters, explicitly trimming the column contents before comparison would ensure accurate results.

```sql
SELECT * FROM employees WHERE department = TRIM('Sales') AND CAST(salary AS DECIMAL(10,2)) >= 100000.00; --Example for explicit casting
```