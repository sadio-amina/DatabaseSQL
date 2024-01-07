#1.

CREATE database  IF NOT EXISTS SomeCompany

#2.

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birthdate DATE,
    position VARCHAR(50),
    department_id INT FOREIGN KEY 

)


#3.

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    department_head INT,
    location VARCHAR(50)
)




#4.

INSERT INTO Employees ( employee_id, first_name, last_name, birthdate, position, department_id)
VALUES 
    (1, 'Arona', 'Benga', '1990-05-15', 'Manager', 1),
    (2, 'Djiby', 'Ba', '1992-09-20', 'Developer', 2),
    (3, 'Maleye', 'JNdoye', '1988-03-10', 'Analyst', 1),
    (4, 'Fatmata', 'Mballo', '1995-07-25', 'Designer', 2),
    (5, 'Fatou', 'Ndiaye', '1991-12-05', 'Engineer', 1),
    (6, 'Birane', 'Diaw', '1993-08-18', 'HR Specialist', 3)


#5.

SELECT first_name, last_name, position
FROM Employees



#6.

UPDATE Employees
SET position = 'Data Analyst'
WHERE employee_id=1


#7.
DELETE FROM Employees
where employee_id = 5

#8.

SELECT  em.last_name, dep.department_head, dep.location
FROM Employees em
JOIN Departments dep ON em.department_id = dep.department_id


#9.

# IT members
SELECT em.first_name, em.last_name 
FROM Employees em
JOIN Departments dep ON em.department_id = dep.department_id
WHERE department_name = 'IT'

#Project Management members

SELECT em.first_name, em.last_name 
FROM Employees em
JOIN Departments dep ON em.department_id = dep.department_id
WHERE department_name = 'Project Management'

# Human Ressources members

SELECT em.first_name, em.last_name 
FROM Employees em
JOIN Departments dep ON em.department_id = dep.department_id
WHERE dep.department_name IN ( 'IT', 'Project Management', 'Human Ressources')
ORDER BY
    CASE dep.department_name 
        WHEN 'IT' THEN 1
        WHEN 'Project Management' THEN 2
        WHEN 'HUman Ressources' THEN 3
        ELSE 4
    END





#10.

#SELECT department_name
#FROM Departments
#ORDER BY 

#11.
INSERT INTO Departments (department_id, department_name, department_head, location)
VALUES (4,'Marketing', 7, 'Branch Office South')

INSERT INTO Employees (employee_id, first_name, last_name, birthdate, position, department_id)
VALUES
    (1, 'Mina', 'Mane', '1990-07-15', 'Markting Agent', 4),
    (2, 'Doudou', 'Ba', '1997-09-26', 'Markting Agent', 4),
    (3, 'Adja', 'Diop', '1989-01-10', 'Markting Agent', 4)





#12.

CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    start_date DATE,
    end_date DATE,
    departement_id VARCHAR(50),
    department_id INT FOREIGN KEY 

)

# Ajout dobservations

INSERT INTO Project (project_id, project_name, start_date, end_date, department_id)
VALUES 
    (1, 'Site web dynamique', '2023-01-01', '2023-06-30', 1), 
    (2, 'Machine Learning', '2023-02-12', '2023-08-31', 1), 
    (3, 'Projet Marketing 1', '2023-03-05', '2023-07-31', 4),
    (4, 'Projet Marketing 2', '2023-04-01', '2023-08-31', 4),
    (5, 'Web scrapping', '2023-07-15', '2023-12-23', 1)


