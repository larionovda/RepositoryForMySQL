use students;

/*Список студентов*/
Select * from student;

/*Список студентов по алфавиту*/
Select * from student order by sd_name;

/*Список оценок по предмету «Java» (с фамилиями студентов)*/
select marks.subject, marks.mark, student.sd_name from marks
	inner join student on marks.student_id = student.student_id
    where marks.subject = 'Java';
    
/*Средняя оценка студента Петрова*/
select avg(marks.mark), student.sd_name from marks
	inner join student on marks.student_id = student.student_id
    where student.sd_name = 'Igor Putin';
    
/*Средняя оценка по каждому предмету*/
select avg(mark), subject from marks group by marks.subject;

/*Средняя оценка по предмету «Java» по каждой группе*/
select marks.subject, avg(marks.mark), student.group from marks
	inner join student on marks.student_id = student.student_id
    where marks.subject = 'Java' group by student.group;
    
/*Количество оценок каждого студента*/
select count(mark), sd_name from marks
	inner join student on marks.student_id = student.student_id
    group by sd_name;
    
/*Список студентов, имеющих ровно две двойкив*/ 
select count(mark), sd_name from marks
	inner join student on marks.student_id = student.student_id
    where mark = 2 group by sd_name having count(mark) = 2;

/*Список предметов, по которым количество двоек больше двух*/
select subject, count(mark) from marks where mark = 2 group by subject having count(mark) > 2;

/*Удалить студентов, имеющих три двойки*/
delete from student where student_id = (select student_id from marks
    where mark = 2 group by student_id having count(mark) = 3);
    
    
    

    
    
    


    
    