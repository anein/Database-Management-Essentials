SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE EventPlanLine;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE EventPlanLine (
  planNo    CHAR(8)   NOT NULL,
  lineNo    CHAR(8)   NOT NULL,
  locNo     CHAR(8)   NOT NULL,
  resNo     CHAR(8)   NOT NULL,
  timeStart TIMESTAMP NOT NULL,
  timeEnd   TIMESTAMP NOT NULL,
  numberFLD INTEGER   NOT NULL,
  CONSTRAINT PK_EventPlanLine PRIMARY KEY (planNo, lineNo),
  CONSTRAINT FK_EventPlan FOREIGN KEY (planNo) REFERENCES EventPlan (planNo),
  CONSTRAINT FK_Location FOREIGN KEY (locNo) REFERENCES Location (locNo),
  CONSTRAINT FK_ResourceTbl FOREIGN KEY (resNo) REFERENCES ResourceTbl (resNo)
);