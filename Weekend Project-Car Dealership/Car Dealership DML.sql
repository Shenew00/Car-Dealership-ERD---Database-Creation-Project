
-- INSERT INTO CAR DEALERSHIP TABLES

INSERT INTO employees(
	employee_id,
	first_name,
	last_name,
	job_title

)

VALUES(
	7981524,
	'Sheneka',
	'Woods',
	'Sales Manager'
);


INSERT INTO customer(
	first_name,
	last_name,
	phone ,
    email

)

VALUES(
	'Sheneka',
    'Woods',
	'(646)944-0519',
	'sharreaye@yahoo.com'
);

INSERT INTO car(
	make,
    'model

)

VALUES(
	'BMW',
    'X5'
 
);

INSERT INTO service_ticket(
	employee_id,
	customer_id,
	car_id,
	service_rendered
)

VALUES(
	7981524,
	95081977,
	49311,
	'Front Brakes'
);


INSERT INTO invoice(
	invoice_id,
	employee_id,
	customer_id,
	car_id
)

VALUES(
	100,
	7981524,
	95081977,
	479311
);

