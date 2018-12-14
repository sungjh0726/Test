- view

A database view is a virtual table or logical table which is defined as a SQL SELECT query with joins. Because a database view is similar to a database table, which consists of rows and columns, so you can query data against it. Most database management systems, including MySQL, allow you to update data in the underlying tables through the database view with some prerequisites.
1. allows you to simplify complex queries
2. helps limit data access to specific users(provides extra security layer)
3.  querying data from a database view can be slow especially if the view is created based on other views.
Tables dependency: you create a view based on underlying tables of the database. Whenever you change the structure of these tables that view associated with, you have to change the view as well.

- trigger

trigger is a stored program executed automatically to respond to a specific event e.g.,  insert, update or delete occurred in a table.
The database trigger is powerful tool for protecting the integrity of the data in your MySQL databases. 
A SQL trigger is a special type of stored procedure. It is special because it is not called directly like a stored procedure. The main difference between a trigger and a stored procedure is that a trigger is called automatically when a data modification event is made against a table whereas a stored procedure must be called explicitly.
1. provide an alternative way to check the integrity of data.
2. provide an alternative way to run scheduled tasks. By using SQL triggers, you don’t have to wait to run the scheduled tasks because the triggers are invoked automatically before or after a change is made to the data in the tables.

- function

 To invoke a stored function, refer to it in an expression. The function returns a value during expression evaluation. 
 1. aggregate functions (AVG, SUM, COUNT, etc.)
 2. string functions (CONCAT, SUBSTRING, FORMAT, etc.)
 3. control flow functions (CASE, IF, etc.)

- procedure

To invoke a stored procedure, use the CALL statement.
