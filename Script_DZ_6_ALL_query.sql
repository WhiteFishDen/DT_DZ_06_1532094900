select building, sum(departments.financing) as "SumFinDep"
from departments
group by building 
having sum(departments.financing) > 100000; -- task 1

select group_name, date_of_lecture
from departments join  _groups using(departments_id)
				 join groups_lectures using(groups_id)
				 join lectures using(lectures_id)
where date_of_lecture < (select min(date_of_lecture)+integer '5' from lectures) and 
(select count(*) from lectures) > 5 and departments_name = 'Software Development'
and _year = 5; --task 2
									
select avg(rating) as "Rating group", group_name
from _groups join groups_students using(groups_id)
		     join students using(students_id)
group by group_name
having avg(rating) > (select avg(rating)
 			          from _groups join groups_students using(groups_id)
						 		   join students using(students_id)
					  where group_name = 'D221'); -- task 3

select concat(firstname, ' ', lastname) as "Teacher" 
from teachers 
where salary > (select avg(salary) as "Mid_sal_prof"
				from teachers 
				where is_professor = '1'); -- task 4
				

select group_name
from _groups join groups_curators using(groups_id) join curators using (curators_id)
group by group_name
having count(curators) > 1; -- task 5

select avg(rating) as "Rating group", group_name
from _groups join groups_students using(groups_id)
		     join students using(students_id)
group by group_name
having avg(rating) < (select min(r) as min_r_5y
					  from (select group_name, avg(rating) as r , _year
							from _groups join groups_students using(groups_id)
										 join students using(students_id)
							group by group_name, _year
							having _year = 5)) -- task 6

							
select sum(departments.financing) as D_F, faculties_name
from faculties join departments using (faculties_id)
group by faculties_name 
having sum(departments.financing) > (select sum(departments.financing) as D_F
									 from faculties join departments using (faculties_id)
									 group by faculties_name
									 having faculties_name = 'Computer Science'); --task 7

select count(lectures) as C_L, concat(firstname, ' ', lastname) as "Teacher", subjects_name
from teachers join lectures using (teachers_id) join subjects using (subjects_id)
group by concat(firstname, ' ', lastname), subjects_name
having count(lectures) = (select max(cl) from
(select count (lectures_id) as cl from lectures
group by teachers_id, subjects_id)) -- task 8 

select subjects_name, count(*) as C_L
from subjects join lectures using(subjects_id)
group by subjects_name 
having count(*) = (select min(C_L) from (select subjects_name, count(*) as C_L
from subjects join lectures using(subjects_id)
group by subjects_name )); -- task 9

select count(students) as c_stud, count(distinct subjects) as c_sub
from students join groups_students using(students_id)
			join _groups using (groups_id)
			join departments using (departments_id)
			join groups_lectures using (groups_id)
			join lectures using (lectures_id)
			join subjects using (subjects_id)
			where departments_name = 'Software Development'; -- task 10 
			