--CREATE TABLES FOR CAT DEALERSHIP

CREATE TABLE employees (
  employee_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  job_title VARCHAR(50)
);


CREATE TABLE "customer" (
  "cutsomer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "phone" VARCHAR(20),
  "email" VARCHAR(75)
);


CREATE TABLE "car" (
  "car_id" SERIAL PRIMARY KEY,
  "make" VARCHAR(25),
  "model" VARCHAR(25),
  "isNew" BOOLEAN
);


CREATE TABLE service_ticket (
  "service_ticket_id" SERIAL PRIMARY KEY,
  "employee_id" INTEGER,
  "customer_id" INTEGER,
  "car_id" INTEGER,
  "service_rendered" VARCHAR(100)
);


CREATE TABLE "invoice" (
  "invoice_id" SERIAL PRIMARY KEY,
  "employee_id" INTEGER,
  "customer_id" INTEGER,
  "car_id" INTEGER,
    FOREIGN KEY ("employee_id") REFERENCES "employees"("first_name")
);


--- Stored Funcion---

CREATE FUNCTION service_ticket(
     service_ticket_id SERIAL PRIMARY KEY,
  employee_id INTEGER,
  customer_id INTEGER,
  car_id INTEGER,
  service_rendered VARCHAR(100)
)
RETURNS INT
LANGUAGE plpgsql
AS
$MAIN$
BEGIN
  INSERT INTO service_ticket(service_ticket_id,employee_id,customer_id, car_id,service_rendered )
  VALUES (service_ticket_id,employee_id,customer_id, car_id,service_rendered);
END
$MAIN$
;
-- add car
CREATE FUNCTION add_car2(
  car_id INTEGER,
  make VARCHAR(25),
  model VARCHAR(25),
  isNew
)
RETURNS VOID
LANGUAGE plpgsql
AS
$MAIN$
BEGIN
  INSERT INTO car(car_id, make, model,isNew)
  VALUES (car_id, make, model, isNew);
END
$MAIN$
;
12:40
SELECT add_customer1(3,'Sharreye', 'Jackson', '646-941-9825','sharreaye@yahoo.com')
SELECT add_car2(3, 'BMW', 'X5', True)







