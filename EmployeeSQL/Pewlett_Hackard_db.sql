drop table employees CASCADE;
drop table departments CASCADE;
drop table titles CASCADE;
drop table salaries CASCADE;
drop table dept_manager CASCADE ;
drop table dept_emp CASCADE ;

create table employees(
    emp_no int,
    emp_title_id varchar(5),
    birth_date date,
    first_name varchar(30),
    last_name varchar(30),
    sex varchar(1),
    hire_date date,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

create table departments(
    dept_no varchar(4),
    dept_name varchar(30),
    PRIMARY KEY (dept_no)
);
	
create table titles(
    title_id varchar,
    title varchar(30),
    PRIMARY KEY (title_id)
);

create table salaries(
    emp_no int,
    salary  int,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

create table dept_manager(
    dept_no varchar(8),
    emp_no int,
	primary key (dept_no,emp_no),
     FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

create table dept_emp(
    emp_no int,
    dept_no varchar(8),
	primary key (dept_no,emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

 