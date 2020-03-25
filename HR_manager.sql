CREATE DATABASE homework_dbdepartmentdepartment;

USE homework_db;


CREATE TABLE department (
id INTEGER NOT NULL auto_increment,
department_name VARCHAR (30),
PRIMARY KEY (id)
);

CREATE TABLE role (
id INTEGER NOT NULL auto_increment,
title VARCHAR(30),
salary DECIMAL(10,2) NOT NULL,
department_id INTEGER NOT NULL,
PRIMARY KEY (id)

);

CREATE TABLE employee (
id INTEGER NOT NULL auto_increment,
first_name VARCHAR (30),
last_name VARCHAR (30),
role_id INTEGER NOT NULL,
is_manager BOOLEAN default false,
Primary KEY (id)
);
