-- 1 through 7: find employees born between 1952 and 1955
SELECT e.emp_no, e.first_name, e.last_name,
		t.title, t.from_date, t.to_date
INTO retirement_titles	
FROM employees e LEFT JOIN titles t ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- 8 to 15: filter for active employees only
SELECT DISTINCT ON (r.emp_no)
		r.emp_no, r.first_name, r.last_name, r.title
INTO unique_titles	
FROM retirement_titles r
WHERE r.to_date = '9999-01-01'
ORDER BY r.emp_no, r.to_date desc

-- 16 to 21:  final retiring count by title
SELECT count(*) as total, title
INTO retiring_titles
FROM unique_titles ut
GROUP BY title
ORDER BY 1 DESC

-- print table for challenge deliverable 1
select * from retiring_titles
