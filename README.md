# Pewlett-Hackard Analysis

<details><summary>Table of Contents</summary>
<p>

1. [Overview](https://github.com/catsdata/Pewlett-Hackard-Analysis#overview)
2. [Resources](https://github.com/catsdata/Pewlett-Hackard-Analysis#resources)
3. [Results](https://github.com/catsdata/Pewlett-Hackard-Analysis#results)
4. [Summary](https://github.com/catsdata/Pewlett-Hackard-Analysis#summary)

</p>
</details>

## Overview

Pewllet-Hackard (PH) is a large company with several thousand employees - many of those are baby-boomers who are currently about to retire, which could cause a massive problem. The company intends to tackle the issue in two ways:
- Offering retirement packages for those who meet certain criteria;
- Figuring out which positions will need to be filled in the upcoming years.

Bobby is an HR analyst who works at Pewllet-Hackard's and whose task is to perform employee research. 

Given how critical the current situation is, Bobby is tasked to find out:
- ***Who will be retiring in the next few years?***
- ***How many positions will PH have to fill?***

Pewllet-Hackard has not taken data seriously up to this point and still manages their employees' information in CSV files. They finally decided it was time to convert it to a solution that would allow more scalability, therefore a SQL-database was brought into scene.

We have been provided six CSV files (listed below in resources) to convert into a database for the analysis
- departments.csv
- dept_emp.csv
- dept_manager.csv
- employees.csv
- salaries.csv
- titles.csv

Based on the csv files, we created an entity relationship diagram (ERD) to plan out our data relationships and start our SQL query.

![EmployeeDB.png](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)



## Resources

- Data Sources: 
    - [departments.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/departments.csv)
    - [dept_emp.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/dept_emp.csv)
    - [dept_manager.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/dept_manager.csv)
    - [employees.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/employees.csv)
    - [salaries.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/salaries.csv)
    - [titles.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/titles.csv)
- Software: 
    - PostgreSQL 12.9.1
    - pgAdmin 4


## Results

Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

- ### indent 1:

details 

Link to the csv file and code: 
    
- ### indent 2:

details

Link to the csv file and code:  [name](link)
    
![image.png](link)
 

## Summary

Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

How many roles will need to be filled as the "silver tsunami" begins to make an impact? Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

## Challenge Files
- [SQL Query File](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Queries/Employee_Database_challenge.sql)
- [mentorship_eligibility.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv)
- [retirement_titles.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/retirement_titles.csv)
- [retiring_titles.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv)
- [unique_titles.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv)



