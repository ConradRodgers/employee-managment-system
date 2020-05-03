CREATE DATABASE homework_db;

USE homework_db;


CREATE TABLE department (
id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
department_name VARCHAR (30),
);

CREATE TABLE role (
id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(30),
salary DECIMAL(10,2) NOT NULL,
department_id INTEGER NOT NULL,
fk_department FOREIGN KEY (department_id) REFERENCES department (id) ON DELETE CASCADE,
);

CREATE TABLE employee (
id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR (30),
last_name VARCHAR (30),
role_id INTEGER NOT NULL,
is_manager BOOLEAN default false,
fk_role FOREIGN KEY (role_id) REFERENCES role (id) ON DELETE CASCADE,
);
