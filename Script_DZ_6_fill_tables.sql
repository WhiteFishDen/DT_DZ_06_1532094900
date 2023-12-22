insert into subjects (subjects_name)
values ('C#'), ('Database Theory'), ('C++'), ('Design');
insert into teachers (is_professor, firstname, salary, lastname)
values ('1','Samanta', 1200, 'Adams'), ('1','Dave', 1500, 'McQueen'), ('0','Jack', 1300, 'Underhill'), ('0', 'Elon', 1345, 'Mask'), ('1', 'Tony', 1259, 'Stark');
insert into lectures (date_of_lecture, subjects_id, teachers_id)
values  ('2023-05-12',2,2),
		('2023-05-14',3,1),
		('2023-05-11',1,1),
		('2023-05-10',4,2),
		('2023-05-08',3,3),
		('2023-05-05',1,1),
		('2023-05-04',3,5),
		('2023-05-07',2,5),
		('2023-05-06',1,4);
insert into faculties (faculties_name)
values ('Computer Science'), ('AI'),('Information Security');
insert into departments (building, financing, departments_name, faculties_id)
values  (1,70000, 'Software Development',3),
		(2,30000, 'cafedra_2',3),
		(3,35600,'cafedra_3',1),
		(4,29657,'cafedra_4',2),
		(5,37650,'cafedra_5',1),
		(1,30198,'cafedra_6',2);
insert into _groups (group_name, _year, departments_id)
values 	('P107', 2, 1),
		('D108', 3, 2),
		('P109', 4, 3),
		('P110', 1, 4),
		('P111', 2, 5),
		('D221', 3, 6),
		('P101', 2, 1),
		('D201', 3, 4),
		('P202', 5, 1),
		('D101', 5, 2),
		('D001', 4, 3);
insert into groups_lectures 
values	(1,1),
		(2,2),
		(3,3),
		(4,4),
		(5,5),
		(6,3),
		(7,7),
		(8,5),
		(9,6),
		(10,9),
		(11,8);
insert into students (firstname, rating, lastname)
values ('Rob', 1, 'Stark'),
       ('Jofri', 2, 'Barateon'),
       ('Luck', 3, 'Skywalker'),
       ('Jhon', 1, 'Wick'),
       ('Ludvig', 4, 'VanBethoven'),
       ('Jhon', 5, 'Favro'),
       ('Entony', 3, 'Makky'),
       ('Din', 5, 'Winchester'),
       ('Bruce', 1, 'Willis'),
       ('Elaija', 4, 'Wood'),
       ('Martin', 2, 'Iden'),
       ('Karl', 4, 'Urban'),
       ('Carl', 4, 'Kornl'),
       ('Elly', 3, 'Spok'),
       ('Mark', 5, 'Hemmil'),
       ('Kolin', 3, 'Farel'),
       ('Dadly', 1, 'Durcl'),
       ('Ron', 4, 'Uizly'),
       ('Garry', 5, 'Potter'),
       ('Rubius', 3, 'Hagryd'),
       ('Don', 2, 'Dodik'),
       ('Drako', 1, 'Malfoy');
insert into curators(firstname, lastname)
values('Albus', 'Dambldor'),
		('Severus', 'Sneyp'),
		('Minevra','MacGonagl'),
		('Tom','Readle');
insert into groups_curators
values(1,1),
		(2,1),
		(3,3),
		(4,4),
		(1,5),
		(1,6),
		(2,7),
		(3,8),
		(4,8),
		(1,10),
		(2,11);
	insert into groups_students 
	values (1,1),
			(1,2),
			(2,3),
			(2,4),
			(3,5),
			(3,6),
			(4,7),
			(4,8),
			(5,9),
			(5,10),
			(6,11),
			(6,12),
			(7,13),
			(7,14),
			(8,15),
			(8,16),
			(9,17),
			(9,18),
			(10,19),
			(10,20),
			(11,21),
			(11,22);
			
		