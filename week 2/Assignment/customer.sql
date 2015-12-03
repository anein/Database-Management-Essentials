CREATE TABLE Customer (
  custNo   CHAR(8)     NOT NULL,
  custName VARCHAR(30) NOT NULL,
  address  VARCHAR(50) NOT NULL,
  internal CHAR(1)     NOT NULL,
  city     VARCHAR(30) NOT NULL,
  zip      VARCHAR(10) NOT NULL,
  state    VARCHAR(2)  NOT NULL,
  contact  VARCHAR(50) NOT NULL,
  phone    VARCHAR(30) NOT NULL,
  CONSTRAINT CustomerPk PRIMARY KEY (custNo)
);
