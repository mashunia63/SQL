create table salary(
	id serial primary key,
	monthly_salary int not null
);

create table roles (
	id serial primary key,
	role_title varchar (50) unique not null
);

create table roles_salary (
	id serial primary key,
	id_role int not null,
	id_salary int not null,
	foreign key (id_role)
		references roles(id),
	foreign key (id_salary)
		references salary(id)
);

insert into salary (monthly_salary)
values (300),
	   (500),
	   (700),
	   (900),
	   (1000),
	   (1200),
	   (1400),
	   (1500),
	   (1700),
	   (1900),
	   (2000);

	  select * from salary;
	  
	 insert into roles (role_title)
	 values ('Junior_QA'),
	 		('Middle_QA'),
	 		('Senior_QA'),
	 		('Junior_JS_developer'),
	 		('Middle_JS_developer'),
	 		('Senior_JS_developer');
	 		
	 select * from roles;
	 
	insert into roles_salary (id_role,id_salary)
	values (1,1),
		   (2,4),
		   (3,10);
	
		  
	select * from roles_salary;
	
--Error
insert into roles_salary (id_role,id_salary)
	values (16,1);
	
update salary
set monthly_salary = 2300
where id = 11;

select * from salary;

update salary
set monthly_salary = 2500
where monthly_salary = 2300;

select * from salary;

delete from salary 
where id between 12 and 22;

select * from salary;

alter table roles 
add column parking int;

select * from roles;

alter table roles
rename column parking to taxi;

select * from roles;

alter table roles
drop column taxi;

select * from roles;


