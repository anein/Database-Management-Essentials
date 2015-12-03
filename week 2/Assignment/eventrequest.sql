SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE EventRequest;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE EventRequest (
  evntNo      CHAR(8)       NOT NULL,
  custNo      CHAR(8)       NOT NULL,
  facNo       CHAR(8)       NOT NULL,
  dateHeld    DATE          NOT NULL,
  dateReq     DATE          NOT NULL,
  dateAuth    DATE,
  status      CHAR(20)      NOT NULL,
  estCost     DECIMAL(8, 2) NOT NULL,
  estAudience INTEGER       NOT NULL,
  budNo       CHAR(30),
  CONSTRAINT EventRequestPK PRIMARY KEY (evntNo),
  CONSTRAINT FK_Facility FOREIGN KEY (facNo) REFERENCES Facility (facNo),
  CONSTRAINT FK_Customer FOREIGN KEY (custNo) REFERENCES Customer (custNo)

);