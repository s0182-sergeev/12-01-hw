CREATE TABLE Positions (
id INT primary key,
name VARCHAR(255) NOT null
);

CREATE TABLE Branches (
id INT primary key,
address VARCHAR(255) NOT null
);

CREATE TABLE TypeDivisions (
id INT primary key,
name VARCHAR(255) NOT null
);

CREATE TABLE Divisions (
id INT primary key,
name VARCHAR(255) NOT null,
typedivisions_id INT NOT null,
foreign key (typedivisions_id) references TypeDivisions(id)
);

CREATE TABLE Employees (
id INT primary key,
name VARCHAR(255) NOT null,
salary NUMERIC(10,2) NOT null,
datehire DATE NOT null,
positions_id INT NOT null,
divisions_id INT NOT null,
branches_id INT NOT null,
foreign key (positions_id) references Positions(id),
foreign key (divisions_id) references Divisions(id),
foreign key (branches_id) references Branches(id)
);

CREATE TABLE Projects (
id INT primary key,
name VARCHAR(255) NOT null
);

CREATE TABLE EmployeesProjects (
employees_id INT,
projects_id INT,
foreign key (employees_id) references Employees(id),
foreign key (projects_id) references Projects(id)
);

