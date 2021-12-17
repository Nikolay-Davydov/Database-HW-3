create table if not exists employee (
	id serial primary key,
	nickname_employee varchar(50) unique not null,
	nickname_department varchar(30) unique not null
);

create table if not exists statys_employee (
	id serial primary key,
	employee_id integer references employee(id),
	boss_id integer references employee(id)	
);
