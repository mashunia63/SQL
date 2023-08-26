/*

Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.

 */

create table employees (
	id serial primary key,
	employee_name varchar (50) not null
);

insert into employees (employee_name)
values ('Alex'),
	  ('Alex1'),
	  ('Alex2'),
	  ('Alex3'),
	  ('Alex4'),
	  ('Alex5'),
	  ('Alex6'),
	  ('Alex7'),
	  ('Alex8'),
	  ('Alex9'),
	  ('Alex10'),
	  ('Alex11'),
	  ('Alex12'),
	  ('Alex13'),
	  ('Alex14'),
	  ('Alex15'),
	  ('Alex16'),
	  ('Alex17'),
	  ('Alex18'),
	  ('Alex19'),
	  ('Alex20'),
	  ('Alex21'),
	  ('Alex22'),
	  ('Alex23'),
	  ('Alex24'),
	  ('Alex25'),
	  ('Alex26'),
	  ('Alex27'),
	  ('Alex28'),
	  ('Alex29'),
	  ('Alex30'),
	  ('Alex31'),
	  ('Alex32'),
	  ('Alex33'),
	  ('Alex34'),
	  ('Alex35'),
	  ('Alex36'),
	  ('Alex37'),
	  ('Alex38'),
	  ('Alex39'),
	  ('Alex40'),
	  ('Alex41'),
	  ('Alex42'),
	  ('Alex43'),
	  ('Alex44'),
	  ('Alex45'),
	  ('Alex46'),
	  ('Alex47'),
	  ('Alex48'),
	  ('Alex49'),
	  ('Alex50'),
	  ('Alex51'),
	  ('Alex52'),
	  ('Alex53'),
	  ('Alex54'),
	  ('Alex55'),
	  ('Alex56'),
	  ('Alex57'),
	  ('Alex58'),
	  ('Alex59'),
	  ('Alex60'),
	  ('Alex61'),
	  ('Alex62'),
	  ('Alex63'),
	  ('Alex64'),
	  ('Alex65'),
	  ('Alex66'),
	  ('Alex67'),
	  ('Alex68'),
	  ('Alex69'),
	  ('Alex70');
	  
	 
	 select * from employees;
	  
--already exist
create table salary1 (
	id serial primary key,
	monthly_salary int not null
);

--drop table salary; impossible because have relations



/*

Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:


 */

select * from salary1;

insert into salary1 (monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);

select * from salary1;


/*
 
 Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

 */

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employee_salary;

insert into employee_salary(employee_id,salary_id)
values (1,1),
	   (2,2),
	   (3,3),
	   (4,4),
	   (5,5),
	   (6,6),
	   (7,7),
	   (8,8),
	   (9,9),
	   (10,10),
	   (11,11),
	   (12,12),
	   (13,13),
	   (14,14),
	   (15,15),
	   (16,16),
	   (17,1),
	   (18,2),
	   (19,3),
	   (20,4),
	   (21,1),
	   (22,2),
	   (23,3),
	   (24,4),
	   (25,5),
	   (26,6),
	   (27,7),
	   (28,8),
	   (29,9),
	   (30,12),
	   (121,11),
	   (122,12),
	   (123,13),
	   (124,14),
	   (125,15),
	   (126,16),
	   (127,7),
	   (128,8),
	   (129,9),
	   (120,1);

	  select * from employee_salary;

/*
 
 Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique

 */
	 
create table roles1 (
	id serial primary key,
	role_name int not null unique
);
	 
select * from roles1;

--Поменять тип столбца role_name с int на varchar(30)

alter table roles1 alter column role_name type varchar (30);

insert into roles1 (role_name)
values ('Junior Python developer'),
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

select * from roles1;

/*

Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:

*/

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null 
);

insert into roles_employee (employee_id,role_id)
values (1,1),
	   (2,2),
	   (3,3),
	   (4,4),
	   (5,5),
	   (6,6),
	   (7,7),
	   (8,8),
	   (9,9),
	   (10,10),
	   (11,11),
	   (12,12),
	   (13,13),
	   (14,14),
	   (15,15),
	   (16,16),
	   (17,17),
	   (18,18),
	   (19,19),
	   (20,20),
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
	   (31,1),
	   (32,2),
	   (33,3),
	   (34,4),
	   (35,5),
	   (36,6),
	   (37,7),
	   (38,8),
	   (39,9),
	   (40,10);
	   
select * from roles_employee;