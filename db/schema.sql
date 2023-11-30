DROP DATABASE IF EXISTS employee_checker;
CREATE DATABASE employee_checker;

USE employee_checker;

CREATE TABLE dpt (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    dpt_id int,
        FOREIGN KEY (dpt_id)
        REFERENCES dpt(id)
        ON DELETE CASCADE
);

CREATE TABLE employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    mgr_id INT, 
        FOREIGN KEY (role_id)
        REFERENCES role(id)
        ON DELETE CASCADE,
        FOREIGN KEY (mgr_id)
        REFERENCES employee(id)
        ON DELETE SET NULL
)