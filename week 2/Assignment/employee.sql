CREATE TABLE Employee (
  empNo      CHAR(11)     NOT NULL,
  empName    VARCHAR(30)  NOT NULL,
  department VARCHAR(30)  NOT NULL,
  email      VARCHAR(255) NOT NULL,
  phone      VARCHAR(30)  NOT NULL,
  CONSTRAINT EmployeePK PRIMARY KEY (empNo)
);
