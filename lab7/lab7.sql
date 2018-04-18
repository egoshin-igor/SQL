use lab7;
-- 2)	Выдать оценки студентов по математике если они обучаются/обучались данному предмету. Оформить выдачу данных с использованием view.
CREATE OR REPLACE VIEW math_lessons
	AS SELECT lesson.id_lesson as id_lesson, lesson.date as begining_date, (lesson.date + DAY(subject.number_of_hours / 2)) as min_ending_date
    FROM lesson
    LEFT JOIN subject ON subject.id_subject = lesson.id_subject
    WHERE subject.name = "Математика";
	
SELECT student.last_name, evaluation.student_evaluation as evaluation FROM math_lessons
LEFT JOIN evaluation ON math_lessons.id_lesson = evaluation.id_lesson
LEFT JOIN student ON student.id_student = evaluation.id_student
WHERE NOW() BETWEEN math_lessons.begining_date and math_lessons.min_ending_date OR NOW() > math_lessons.begining_date;

-- 3)	Дать информацию о должниках с указанием фамилии студента и названия предмета.  
--     Должниками считаются студенты, не имеющие оценки по предмету, который ведется в группе. Оформить в виде процедуры, на вход название группы.
DROP PROCEDURE IF EXISTS  print_debtors;
DELIMITER //
CREATE PROCEDURE print_debtors (IN group_name VARCHAR(255))
BEGIN
	DROP TABLE IF EXISTS group_students;
	CREATE TEMPORARY TABLE group_students AS (
		SELECT student.id_student as id_student, student.last_name as name, subject.name as subject FROM lesson
		LEFT JOIN study_group ON study_group.id_group = lesson.id_group
		LEFT JOIN subject ON subject.id_subject = lesson.id_subject
        LEFT JOIN student ON study_group.id_group = student.id_group
		WHERE
			study_group.group_name = group_name
	);
    SELECT DISTINCT group_students.name, group_students.subject  FROM group_students
    LEFT OUTER JOIN evaluation ON evaluation.id_student = group_students.id_student
	WHERE
		evaluation.id_student IS  NULL;
END //
DELIMITER ;

CALL print_debtors("ВМ-21");
CALL print_debtors("ВМ-22");