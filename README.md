# SQL Query Bug: Unexpected Results and Implicit Type Conversion

This repository demonstrates a common SQL error where the '>' operator excludes values exactly matching the threshold, and another less obvious one related to implicit type conversion. The `bug.sql` file shows the problematic query and the `bugSolution.sql` file contains the corrected version.

## Bug Description
The original SQL query uses the '>' operator to filter employees with salaries above a certain threshold. This causes the query to exclude employees with salaries *exactly* equal to the threshold value, which might be an unintentional omission.

Another potential issue lies in implicit type conversions. If the comparison involves different data types (e.g., comparing a string '100000' with a numeric salary field), the query might produce unexpected and hard to diagnose results because of the automatic type coercion by the database engine.

## Bug Solution
The solution involves using the '>=' operator to include salaries equal to the threshold and ensuring that the data types being compared are explicitly consistent to avoid unexpected implicit conversions.