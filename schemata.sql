
-- Create titles table
CREATE TABLE titles (
  title_id VARCHAR(40) PRIMARY KEY NOT NULL,
  title VARCHAR(40) NOT NULL
);

-- Create employees table
CREATE TABLE employees (
  emp_no INT PRIMARY KEY NOT NULL,
  title_id VARCHAR(40) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR(35) NOT NULL,
  last_name VARCHAR(35) NOT NULL,
  gender VARCHAR(1) NOT NULL,
  hire_date DATE NOT NULL,
  FOREIGN KEY (title_id) REFERENCES titles(title_id)
);


-- Create departments table
create table departments (
	dept_no VARCHAR(8) primary key NOT NULL,
	dept_name VARCHAR(40) NOT NULL
);

-- Create department employee table
create table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(8) NOT NULL,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);

-- Create salaries table
create table salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
    foreign key (emp_no) references employees (emp_no)
);

-- Create Department manager table
create table dept_manager (
	dept_no VARCHAR(8) NOT NULL,
	emp_no INT NOT NULL,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);