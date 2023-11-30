USE employee_checker;

SET FOREIGN_KEY_CHECKS=0;

INSERT INTO dpt (name)
    VALUES
        ('Sales'),
        ('Service'),
        ('IT'),
        ('Finance'),
        ('Executive');

INSERT INTO role (name, salary, dpt_id)
    VALUES  
        ('Sales Manager', 95000, 1),
        ('Sales Staff', 60000, 1),
        ('Service Coordinator', 80000, 2),
        ('Service Technician', 85000, 2),
        ('Service Manager', 100000, 2),
        ('Senior Software Engineer', 125000, 3),
        ('Junior Software Engineer', 95000, 3),
        ('Finance Manager', 150000, 4),
        ('Accountant', 105000, 4),
        ('CEO', 200000, 5);

INSERT INTO employee (first_name, last_name, role_id, mgr_id)
    VALUES 
        ('Azalea', 'Dennell', 1, 10),
        ('Abiodun', 'Cowden', 2, 1),
        ('Francis', 'Irvine', 3, 5),
        ('Dustin', 'Burgess', 4, 5),
        ('Yohannes', 'Coombs', 5, 10),
        ('Marwin', 'Iwai', 6, 10),
        ('Rauha', 'Snell', 7, 6),
        ('Natalia', 'Durant', 8, 10),
        ('Harriette', 'Jewell', 9, 8),
        ('Yoko', 'Stieber', 10, NULL);