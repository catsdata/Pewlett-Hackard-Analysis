-- Deliverable 1 steps 1 through 7: find employees born between 1952 and 1955
SELECT e.emp_no, e.first_name, e.last_name,
		t.title, t.from_date, t.to_date
INTO retirement_titles	
FROM employees e LEFT JOIN titles t ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Deliverable 1 steps 8 to 15: remove duplicates from older job titles and employees no longer with the company
SELECT DISTINCT ON (r.emp_no)
		r.emp_no, r.first_name, r.last_name, r.title
INTO unique_titles	
FROM retirement_titles r
WHERE r.to_date = '9999-01-01'
ORDER BY r.emp_no, r.to_date DESC

-- Deliverable 1 steps 16 to 21:  final retiring count by title
SELECT count(*) as total, title
INTO retiring_titles
FROM unique_titles ut
GROUP BY title
ORDER BY 1 DESC

-- print table for challenge deliverable 1
SELECT * FROM retiring_titles

-- Deliverable 2:  find mentors born in 1965
SELECT DISTINCT ON (e.emp_no)
	e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
INTO mentorship_eligibility
FROM employees e, dept_emp de, titles t
WHERE e.emp_no = de.emp_no
AND e.emp_no = t.emp_no
AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
AND t.to_date = '9999-01-01'
ORDER BY e.emp_no

SELECT count(*) as total, title
INTO mentorship_eligibility_summary
FROM mentorship_eligibility m
GROUP BY title
ORDER BY 1 DESC

SELECT * FROM mentorship_eligibility_summary

-- Deliverable 3:  addressing first impacts of retiring

SELECT ut.emp_no, ut.first_name, ut.last_name, ut.title
INTO firstyear_retirees
FROM unique_titles ut LEFT JOIN employees e ON (ut.emp_no = e.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1952-12-31')
ORDER BY ut.emp_no

SELECT count(*) as total, title
INTO firstyear_summary
FROM firstyear_retirees fr
GROUP BY title
ORDER BY 1 DESC

SELECT * FROM firstyear_summary

-- Deliverable 3:  find mentors born after 1964 with at least 2 years in position
SELECT DISTINCT ON (e.emp_no)
	e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
INTO mentorship_revised
FROM employees e, dept_emp de, titles t
WHERE e.emp_no = de.emp_no
AND e.emp_no = t.emp_no
AND e.birth_date > '1965-01-01'
AND t.to_date = '9999-01-01'
AND t.from_date < '2000-08-01'
ORDER BY e.emp_no

SELECT count(*) as total, title
INTO mentorship_summary
FROM mentorship_revised mr
GROUP BY title
ORDER BY 1 DESC

SELECT * FROM mentorship_summary
