
# 🎓 Student Course Management System (SQL Project)

## 🧾 Overview
This project demonstrates a **Student Course Management System** built using **SQL**.  
It allows efficient storage, retrieval, and management of student and course-related information.  
The project focuses on designing relational tables, implementing foreign key relationships, and performing analytical SQL queries to manage academic data seamlessly.



## 🚀 Features

- 🎓 **Student Database Management:** Stores detailed student information such as name, age, and gender.  
- 📚 **Course Records:** Maintains course details including course name and instructor.  
- 🔗 **Enrollments:** Establishes relationships between students and their registered courses.  
- 📈 **Query Operations:** Supports SQL operations like joins, grouping, and aggregation.  
- 📊 **Data Insights:** Provides analytical queries to count enrollments and calculate averages.  
- 🧮 **Normalization Ready:** Follows relational design principles to ensure minimal data redundancy.  

---

## 🗂️ Project Structure



Student_Course_Management/
│
├── database.db              # SQLite database file
├── table.sql                # Contains all table creation and data insertion queries
└── README.md                # Project documentation



## 🧠 Step-by-Step Workflow

1️⃣ **Create Database:** Initializes `database.db` to store all records.  
2️⃣ **Define Tables:** Creates `Students`, `Courses`, and `Enrollments` tables with primary and foreign keys.  
3️⃣ **Insert Data:** Populates sample data into each table.  
4️⃣ **Perform Queries:** Runs operations such as joins, counts, averages, and filters.  
5️⃣ **View Results:** Displays query results directly in the SQLite terminal or VS Code SQL viewer.  



## 🧮 Sample SQL Queries

**Retrieve all students with their enrolled courses:**

SELECT Students.name, Courses.course_name
FROM Students
JOIN Enrollments ON Students.student_id = Enrollments.student_id
JOIN Courses ON Enrollments.course_id = Courses.course_id;


**Count the number of students enrolled in each course:**


SELECT Courses.course_name, COUNT(Enrollments.student_id) AS total_students
FROM Courses
JOIN Enrollments ON Courses.course_id = Enrollments.course_id
GROUP BY Courses.course_name;


**Calculate average student age:**


SELECT AVG(age) AS average_age FROM Students;



## 🔮 Future Improvements

* 🧩 Add more tables for attendance, grades, and departments.
* 📈 Create views and triggers for automatic report generation.
* 🌐 Integrate with a Flask or Django frontend for web-based access.
* 🧾 Generate downloadable reports for each student or course.
* ☁️ Deploy on cloud-based database services for scalability.


## 👩‍💻 Author

**Shambhavi M P**
🎓 *B.Tech in Artificial Intelligence & Machine Learning*
🌐 **GitHub:** [shambhaviprakash77](https://github.com/shambhaviprakash77)


```
