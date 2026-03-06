## AIM:
To understand the concept and working of cursors in PL/SQL for row-by-row data processing and to analyze how implicit cursors, explicit cursors, and cursor attributes are used to implement business logic on multiple rows in a database table.

## Software Requirements:
- Database Management System (DBMS):
    - Oracle Database Express Edition
    - PostgreSQL
- Database Client Tool:
    - Oracle SQL Developer
    - pgAdmin

## Objective:
- To implement implicit and explicit cursors in PL/SQL.
- To process multiple rows individually using explicit cursors.
- To use cursor attributes such as `%FOUND`, `%NOTFOUND`, `%ROWCOUNT`, and `%ISOPEN`.
- To simulate enterprise-level business logic processing.

## Problem Statement:
Enterprise applications often retrieve multiple records that require row-by-row processing to apply business rules such as salary increments, bonus allocation, eligibility checks, etc.