--Создать таблицу employees
--id. serial,  primary key,
--employee_name. Varchar(50), not null
	create table employees(
	id serial primary key,
	employee_name varchar (50) not null
)

--Наполнить таблицу employee 70 строками.
	insert into employees(employee_name)
values 	('Olivia'),
		('Emma'),
		('Ava'),
		('Charlotte'),
		('Sophia'),
		('Amelia'),
		('Isabella'),
		('Mia'),
		('Evelyn'),
		('Harper'),
		('Camila'),
		('Gianna'),
		('Abigail'),
		('Luna'),
		('Ella'),
		('Elizabeth'),
		('Sofia'),
		('Emily'),
		('Avery'),
		('Mila'),
		('Scarlett'),
		('Eleanor'),
		('Madison'),
		('Layla'),
		('Penelope'),
		('Aria'),
		('Chloe'),
		('Grace'),
		('Ellie'),
		('Nora'),
		('Hazel'),
		('Zoey'),
		('Riley'),
		('Victoria'),
		('Lily'),
		('Aurora'),
		('Violet'),
		('Nova'),
		('Hannah'),
		('Emilia'),
		('Zoe'),
		('Stella'),
		('Everly'),
		('Isla'),
		('Leah'),
		('Lillian'),
		('Addison'),
		('Willow'),
		('Lucy'),
		('Paisley'),
		('Natalie'),
		('Naomi'),
		('Eliana'),
		('Brooklyn'),
		('Elena'),
		('Aubrey'),
		('Claire'),
		('Ivy'),
		('Kinsley'),
		('Audrey'),
		('Maya'),
		('Genesis'),
		('Skylar'),
		('Bella');
	
	
--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null	
	create table salary (
		id serial primary key,
		monthly_salary integer not null
)

--Наполнить таблицу salary 15 строками:
	insert into salary(monthly_salary)
	values 	('1000'),
		('1100'),
		('1200'),
		('1300'),
		('1400'),
		('1500'),
		('1600'),
		('1700'),
		('1800'),
		('1900'),
		('2000'),
		('2100'),
		('2200'),
		('2300'),
		('2400'),
		('2500');


--Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

		create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
)

--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
	insert into employee_salary(employee_id, salary_id)
values 	(72,7),
		(73, 4),
		(74,9),
		(75,13),
		(76,4),
		(77,2),
		(78,6),
		(79,13),
		(80,4),
		(81,1),
		(21, 7),
		(22, 4),
		(24,9),
		(25,13),
		(27,4),
		(28,2),
		(29,4),
		(30,13),
		(31,4),
		(32,1),
		(34, 4),
		(35,9),
		(36,13),
		(37,4),
		(38,5),
		(39,6),
		(41,13),
		(42,4),
		(43,1),
		(44, 4),
		(45,9);

--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique	
	create table roles (
	id serial primary key,
	role_name int not null unique
	)

--Поменять тип столба role_name с int на varchar(30)
	alter table  roles 
	alter column role_name type varchar(30);

--Наполнить таблицу roles 20 строками:
		insert into roles(role_name)
values 	('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
		

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
		create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
		)

--Наполнить таблицу roles_employee 40 строками:
		insert into roles_employee(employee_id,role_id)
	values 	(1,2),
			(2,4),
			(3,9),
			(37,13),
			(5,4),
			(6,2),
			(7,9),
			(8,13),
			(9,3),
			(10,3),
			(11,7),
			(12,5),
			(13,6),
			(14,7),
			(15,8),
			(16,9),
			(17,10),
			(18,11),
			(19,12),
			(20,13),
			(21,1),
			(22,2),
			(23,3),
			(24,4),
			(25,5),
			(26,6),
			(27,7),
			(28,8),
			(29,9),
			(30,10),
			(31,11),
			(32,12),
			(33,13),
			(34,1),
			(35,2),
			(40,3),
			(55,4),
			(39,5),
			(36,6);
		
	

	


select * from roles_employee 
