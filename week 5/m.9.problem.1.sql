/*
A customer has a unique customer identifier, a name, a billing address (street, city, state, and zip),
and a collection of submitted work orders.
*/

CREATE TABLE Customer (
  customerId   CHAR(8) PRIMARY KEY,
  name         VARCHAR(45),
  billAddress  VARCHAR(45),
  collectionId CHAR(8)
);

/**
A work order has a unique work order number, a creation date, a date required, a completion date, a customer, an optional supervising employee,
a work address (street, city, state, zip), and a set of tasks.
 */

CREATE TABLE WorkOrder (
  orderId     CHAR(8) PRIMARY KEY,
  createDate  DATE,
  complDate   DATE,
  workAddress VARCHAR(45),
  customerId  CHAR(8) NOT NULL,
  colTaskId   CHAR(8) NOT NULL,
  FOREIGN KEY (customerId) REFERENCES Customer (customerId)


);

/**
Each task has a unique task identifier, a task name, an hourly rate, and estimated hours.
Tasks are standardized across work orders so that the same task can be performed on many work orders.
*/

CREATE TABLE Task (
  taskId   CHAR(8) PRIMARY KEY,
  name     VARCHAR(45),
  rate     INT,
  estHours INT
);

/**
Each task on a work order has a status (not started, in progress, or completed), actual hours, and a completion date.
 The completion date is not entered until the status changes to complete.
 */

CREATE TABLE WorkTasksCollection (

  wtId           CHAR(8) PRIMARY KEY,
  orderId        CHAR(8) NOT NULL,
  taskId         CHAR(8) NOT NULL,
  status         SET('not started', 'in progress', 'completed'),
  actualHours    INT,
  completionDate DATE,

  FOREIGN KEY (orderId) REFERENCES WorkOrder (orderId),
  FOREIGN KEY (taskId) REFERENCES Task (taskId)

);

/**
The data about materials include a unique material identifier, a name, and an estimated cost.
 A material can appear on multiple work orders.
 */

CREATE TABLE Material (
  mtId CHAR(8) PRIMARY KEY,
  name VARCHAR(45),
  cost INT
);

/**
Each work order uses a collection of materials.  A material used on a work order includes
the estimated quantity of the material and the actual quantity of the material used.
 */

CREATE TABLE MaterialsCollection (
  collId      CHAR(8) PRIMARY KEY,
  mtId        CHAR(8) NOT NULL,
  orderId     CHAR(8) NOT NULL,
  estQuantity INT,
  actQuantity INT,
  FOREIGN KEY (orderId) REFERENCES WorkOrder (orderId),
  FOREIGN KEY (mtId) REFERENCES Material (mtId)
);


