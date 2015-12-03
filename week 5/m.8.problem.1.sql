CREATE TABLE Client (
  clientId    CHAR(8) PRIMARY KEY,
  name        VARCHAR(45) NOT NULL,
  insProvider VARCHAR(45),
  birthday    DATE,
  address     VARCHAR(45),
  gender      SET('male', 'female')

);

CREATE TABLE LabTest (
  testId   CHAR(8) PRIMARY KEY,
  clientId CHAR(8),
  typeId   CHAR(8),
  seanse   DATETIME,
  labEmp   CHAR(8),
  FOREIGN KEY (clientId) REFERENCES Client (clientId)
);

CREATE TABLE TestType (
  typeId CHAR(8) PRIMARY KEY,
  tName  VARCHAR(45),
  cost   INT,
  code   INT
);

CREATE TABLE TestTypeItem (
  itemId     CHAR(8) PRIMARY KEY,
  typeId     CHAR(8) NOT NULL,
  name       VARCHAR(45),
  measure    VARCHAR(45),
  descripion VARCHAR(45),
  CONSTRAINT FK_TestTpe FOREIGN KEY (typeId) REFERENCES TestType (typeId)
);

