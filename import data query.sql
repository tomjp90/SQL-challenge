-- Import data to tables

copy departments from 'C:\Users\TechFast Australia\OneDrive\Desktop\homework\sql-challenge\sql-challenge\data\departments.csv'
DELIMITER ','
CSV HEADER;

copy dept_emp from 'C:\Users\TechFast Australia\OneDrive\Desktop\homework\sql-challenge\sql-challenge\data\dept_emp.csv'
DELIMITER ','
CSV HEADER;

copy dept_manager from 'C:\Users\TechFast Australia\OneDrive\Desktop\homework\sql-challenge\sql-challenge\data\dept_manager.csv'
DELIMITER ','
CSV HEADER;

copy employees from 'C:\Users\TechFast Australia\OneDrive\Desktop\homework\sql-challenge\sql-challenge\data\employees.csv'
DELIMITER ','
CSV HEADER;

copy salaries from 'C:\Users\TechFast Australia\OneDrive\Desktop\homework\sql-challenge\sql-challenge\data\salaries.csv'
DELIMITER ','
CSV HEADER;

copy titles from 'C:\Users\TechFast Australia\OneDrive\Desktop\homework\sql-challenge\sql-challenge\data\titles.csv'
DELIMITER ','
CSV HEADER;