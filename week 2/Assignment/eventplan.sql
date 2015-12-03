SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE EventPlan;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE EventPlan (
  planNo   CHAR(8)  NOT NULL,
  evntNo   CHAR(8)  NOT NULL,
  empNo    CHAR(8),
  workDate DATE     NOT NULL,
  notes    TEXT,
  activity CHAR(10) NOT NULL,
  CONSTRAINT PK_EventPlan PRIMARY KEY (planNo),
  CONSTRAINT FK_EventRequest FOREIGN KEY (evntNo) REFERENCES EventRequest (evntNo),
  CONSTRAINT FK_Employee FOREIGN KEY (empNo) REFERENCES Employee (empNo)
);