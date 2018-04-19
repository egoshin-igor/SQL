use lab7;
-- 2)	Выдать оценки студентов по математике если они обучаются/обучались данному предмету. Оформить выдачу данных с использованием view.
-- , (lesson.date + DAY(subject.number_of_hours / 2)) as min_ending_date
CREATE OR REPLACE VIEW math_lessons
	AS SELECT lesson.id_lesson as id_lesson, lesson.date as begining_date
    FROM lesson
    LEFT JOIN subject ON subject.id_subject = lesson.id_subject
    WHERE subject.name = "Математика";
	
SELECT student.last_name, evaluation.student_evaluation as evaluation FROM math_lessons
LEFT JOIN evaluation ON math_lessons.id_lesson = evaluation.id_lesson
LEFT JOIN student ON student.id_student = evaluation.id_student
WHERE NOW() >= math_lessons.begining_date;

-- 3)	Дать информацию о должниках с указанием фамилии студента и названия предмета.  
--      Должниками считаются студенты, не имеющие оценки по предмету, который ведется в группе. Оформить в виде процедуры, на вход название группы.
DROP PROCEDURE IF EXISTS  print_debtors;
DELIMITER //
CREATE PROCEDURE print_debtors (IN group_name VARCHAR(255))
BEGIN
	DROP TABLE IF EXISTS group_students;
	CREATE TEMPORARY TABLE group_students AS (
		SELECT student.id_student as id_student, student.last_name as name, subject.name as subject, lesson.id_lesson as id_lesson FROM lesson
		LEFT JOIN study_group ON study_group.id_group = lesson.id_group
		LEFT JOIN subject ON subject.id_subject = lesson.id_subject
        LEFT JOIN student ON study_group.id_group = student.id_group
		WHERE
			study_group.group_name = group_name
	);
    SELECT DISTINCT group_students.name, group_students.subject  FROM group_students
	LEFT JOIN evaluation ON evaluation.id_student = group_students.id_student AND evaluation.id_lesson = group_students.id_lesson
	WHERE
		evaluation.id_student IS  NULL;
END //
DELIMITER ;

CALL print_debtors("ВМ-21");
CALL print_debtors("ВМ-22");
CALL print_debtors("ВМ-23");

-- 4)	Дать среднюю оценку студентов по каждому предмету для тех предметов, по которым занимается не менее 10 студентов.
CREATE OR REPLACE VIEW popular_subjects
	AS SELECT subject.id_subject as id_subject, subject.name as subject FROM lesson
    LEFT JOIN study_group ON study_group.id_group = lesson.id_group
	LEFT JOIN student ON study_group.id_group = student.id_group
	LEFT JOIN subject ON subject.id_subject = lesson.id_subject
    GROUP BY
		subject.id_subject
	HAVING
		COUNT(student.id_student) >= 10;
        
CREATE OR REPLACE VIEW popular_lessons
	AS SELECT lesson.id_lesson as id_lesson, popular_subjects.subject as subject FROM popular_subjects
    LEFT JOIN lesson ON popular_subjects.id_subject = lesson.id_subject
    WHERE
		popular_subjects.id_subject = lesson.id_subject;
        
CREATE OR REPLACE VIEW average_evaluations
	AS SELECT (CEIL(AVG(evaluation.student_evaluation) * 10) / 10) as average_evaluation, evaluation.id_student as id_student, evaluation.id_lesson as id_lesson FROM popular_lessons
	LEFT JOIN evaluation ON popular_lessons.id_lesson = evaluation.id_lesson
	LEFT JOIN student ON student.id_student = evaluation.id_student
	GROUP BY
		evaluation.id_student, evaluation.id_lesson;
        
SELECT student.last_name, subject.name, average_evaluations.average_evaluation FROM average_evaluations
LEFT JOIN student ON student.id_student = average_evaluations.id_student
LEFT JOIN lesson ON lesson.id_lesson = average_evaluations.id_lesson
LEFT JOIN subject ON subject.id_subject = lesson.id_subject;

-- 5)	Дать оценки студентов специальности ВМ по всем проводимым предметам с указанием группы, фамилии, предмета, даты.
--      При отсутствии оценки заполнить значениями NULL поля оценки и даты.

SELECT student.last_name, study_group.group_name, subject.name, lesson.date, evaluation.student_evaluation  FROM evaluation
LEFT JOIN lesson ON lesson.id_lesson = evaluation.id_lesson
RIGHT JOIN student ON student.id_student = evaluation.id_student
LEFT JOIN study_group ON study_group.id_group = student.id_group
LEFT JOIN subject ON subject.id_subject = lesson.id_subject
WHERE
	study_group.specialty_name = "ВМ";
-- 6)	Всем студентам специальности ИВТ, получившим оценки меньшие 5 по предмету БД до 12.05, повысить эти оценки на 1 балл.