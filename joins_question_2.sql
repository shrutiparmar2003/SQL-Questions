/*Question:
You have the following tables:
University Table:

| university_id | name     |
| -------------- | -------- |
| U1             | ABC Univ |
| U2             | XYZ Univ |

*Department Table:

| department_id | university_id |
| -------------- | -------------- |
| D1             | U1             |
| D2             | U1             |
| D3             | U2             |

Professor Table:

| professor_id | department_id |
| ------------- | -------------- |
| P1            | D1             |
| P2            | D2             |
| P3            | D3             |

Student Table:

| student_id | department_id |
| ----------- | -------------- |
| S1          | D1             |
| S2          | D1             |
| S3          | D3             |


 Objective:
Write an SQL query to find the following information for each university:

university_id

university_name

Total number of departments in the university

Total number of professors in the university

Total number of students in the university

The result should be grouped by university_id and ordered by university_id.*/


SELECT
University.university_id, name,
count(distinct department.department_id ) as total_departments,
count(distinct professor.professor_id ) as total_professors,
count(distinct student.student_id ) as total_students

FROM UNIVERSITY

LEFT JOIN Deaprtment ON Department.University_id=university.university_id
LEFT JOIN Professor ON Professor.Department_id=Department.Department_id
LEFT JOIN Student ON Student.Department_id=Department.Department_id

GROUP BY University.university_id,University.name
ORDER BY University.university_id;


