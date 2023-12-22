create table if not exists curators
(
	curators_id int generated always as identity primary key,
 	firstname varchar not null,
 	lastname varchar not null
);

 create table students
 (
 	students_id int generated always as identity primary key,
 	firstname varchar not null,
 	rating int not null check(rating>=0 and rating <=5),
 	lastname varchar not null
 );
 

create table if not exists subjects
(
	subjects_id int generated always as identity primary key,
	subjects_name varchar(100) not null unique
);

create table if not exists teachers
(
	teachers_id int generated always as identity primary key,
	is_Professor bit(1) not null default B'0',
	firstname varchar not null unique,
	salary numeric not null check (salary>0),
	lastname varchar not null
);

create table if not exists faculties
(
    faculties_id int generated always as identity primary key,
    faculties_name varchar(100) not null unique
);

create table if not exists departments
(
    departments_id int generated always as identity primary key,
    building int not null check (building>=1 and building <= 5),
    financing numeric not null default 0 check (financing>=0),
    departments_name varchar(100) not null unique,
    faculties_id int references faculties(faculties_id) not null
);

create table if not exists lectures
(
	lectures_id int generated always as identity primary key,
	date_of_lecture date not null check (date_of_lecture < current_date),
	subjects_id int references subjects(subjects_id) not null,
	teachers_id int references teachers(teachers_id) not null
);

create table if not exists _groups
(
   groups_id int generated always as identity primary key,
   group_name varchar(10) not null unique,
   _year int not null check (_year>=1 and _year<=5),
   departments_id int references departments(departments_id) not null
);

create table if not exists groups_lectures
(
	groups_id int references _groups(groups_id) not null, 
	lectures_id int references lectures(lectures_id) not null,
	constraint groups_lectures_id primary key(groups_id, lectures_id)
);

create table groups_curators
(
	curators_id int references curators(curators_id) not null,
	groups_id int references _groups(groups_id) not null, 
	constraint pk_groups_curators_id primary key(groups_id, curators_id)
);
create table groups_students
(
	groups_id int references _groups(groups_id)not null,
	students_id int references students(students_id)not null,
	constraint pk_groups_students_id primary key(groups_id, students_id)
);