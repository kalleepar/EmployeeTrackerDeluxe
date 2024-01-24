DROP DATABASE IF EXISTS employee_tracker;
CREATE DATABASE employee_tracker;

USE employee_tracker;

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT,
  manager_id INT,
  PRIMARY KEY (id),
    

    FOREIGN KEY(manager_id)
    REFERENCES employee(id)

);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Bruce", "Wayne", 1, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Dick", "Grayson", 2, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Jason", "Todd", 3, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Tim", "Drake", 2, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Damian", "Wayne", 2, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Barbara", "Gordon", 2, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Jean-Paul", "Valley", 3, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Alfred", "Pennyworth", 4, 1 );
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Harper", "Row", 2, 1);


CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT,
  PRIMARY KEY (id)

);
insert into role(title, salary, department_id) values('Superhero', 5000000, 1);
insert into role(title, salary, department_id) values('Sidekick', 1000000, 2);
insert into role(title, salary, department_id) values('Antihero', 1000000, 4);
insert into role(title, salary, department_id) values('Butler', 5000000, 3);
insert into role(title, salary, department_id) values('Other', 1000000, 1);


CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);
insert into department(name)
values ('Superheroes'),
       ('Sidekicks'),
       ('Butlers'),
       ('Antiheroes'),
       ('Parents');
      
