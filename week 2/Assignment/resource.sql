DROP TABLE ResourceTbl;

CREATE TABLE ResourceTbl (
  resNo   CHAR(8)       NOT NULL,
  resName VARCHAR(30)   NOT NULL,
  rate    DECIMAL(8, 2) NOT NULL,
  CONSTRAINT PK_ResourceTbl PRIMARY KEY (resNo)
);
