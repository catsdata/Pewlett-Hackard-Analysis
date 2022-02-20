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

Pewlett-Hackard is a company with several thousand loyal employees; many of which are baby-boomers about to retire.  This mass retirement coming up has been termed the "silver tsunami".  Bobby, the Pewlett-Hackard HR analyst, was tasked to perform employee research with my assistance and analyze data to answer the following:

- ***Who will be retiring in the next few years, and what are their current titles?***
- ***Which employees are eligible for a mentorship program?***

Data is currently pulled into csv files from seperate systems, but needs to be built into a database for future use and scalability.  SQL is the preferred database structure.

We have been provided six CSV files (listed below in resources) to convert into the SQL database for the retirement analysis.  Based on the csv files, we created an entity relationship diagram (ERD) to plan out our data relationships and start our SQL query.

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

### Number of Retiring Employees by Title:

- We started by creating a table of those of retirement age and their titles.  To do so, we linked the employees csv file with the titles csv file in a left join respectively using the employee numbers.  We grabbed the employee number, first name and last name from the employees csv and the title, from date and to date from the titles csv.  This table was saved as [retirement_titles.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/retirement_titles.csv) with 133,776 results.  The results contained duplicate employees due to job changes as well as employees no longer with Pewlett-Hackard.

- To remove duplicates, we used DISTINCT ON with the employee number.  We then removed ex-employees by adding in a WHERE clause that had the "9999-01-01" default to_date for active employees.  This reduced us to 72458 records, removing over 90,000 rows of data for duplicates and ex-employees.  Revised data was saved to [unique_titles.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv).

- To summarize the data by titles, we selected counts into new file [retiring_titles.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv). 

   ![title_counts.PNG](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/title_counts.PNG)

### Employees Eligible for the Mentorship Program:

- Pewlett-Hackard execs wanted to look into a Mentorship program for new employees coming in to replace the retirees.  It was requested to find employeees born in 1965.  Using DISTINCT ON again from the employee numbers, we grabbed data from the employees csv file, dept_emp csv file, and titles csv file.  All contained the employee numbers.  Data was filtered with birthdates from 1965-01-01 to 1965-12-31 and to grab only active employees the to_date filtered to 9999-01-01.  Data was saved into [mentorship_eligibility.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv).  1549 employees were listed.

## Summary

Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

How many roles will need to be filled as the "silver tsunami" begins to make an impact? Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

## Challenge Files
- [SQL Query File](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Queries/Employee_Database_challenge.sql)
- [mentorship_eligibility.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv)
- [retirement_titles.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/retirement_titles.csv)
- [retiring_titles.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv)
- [unique_titles.csv](https://github.com/catsdata/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv)



