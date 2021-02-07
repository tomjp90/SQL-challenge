-- remove any tables 
--DROP TABLE departments
--DROP TABLE dept_emp
--DROP TABLE dept_manager
--DROP TABLE employees
--DROP TABLE salaries
--DROP TABLE titles

-- create tables

CREATE TABLE "departments" (
    "dept_no" varchar   NOT NULL,
    "dept_name" varchar   NOT NULL
-- CONSTRAINT "pk_departments" PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_emp" (
	"emp_no" int   NOT NULL,
    "dept_no" varchar   NOT NULL    
--CONSTRAINT "pk_dept_emp" PRIMARY KEY ("dept_no","emp_no")
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar   NOT NULL,
    "emp_no" int   NOT NULL
--CONSTRAINT "pk_dept_manager" PRIMARY KEY ("dept_no","emp_no")
);

-- due to errors reading in data in as DATE, dates are imported as varchar and altered when queried in questions
CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar   NOT NULL,
    "birth_date" varchar   NOT NULL,
    --"birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" varchar   NOT NULL
    --"hire_date" date   NOT NULL,
--    CONSTRAINT "pk_employees" PRIMARY KEY ("emp_no")
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL
);

CREATE TABLE "titles" (
    "title_id" varchar   NOT NULL,
    "title" varchar   NOT NULL
--CONSTRAINT "pk_titles" PRIMARY KEY ("title_id")
);

-- ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
-- REFERENCES "employees" ("emp_no");

-- ALTER TABLE "dept_emp" ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
-- REFERENCES "departments" ("dept_no");

-- ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
-- REFERENCES "departments" ("dept_no");

-- ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "employees" ("emp_no");

-- ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "employees" ("emp_no");

-- ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_title_id" FOREIGN KEY("title_id")
-- REFERENCES "employees" ("emp_title_id");