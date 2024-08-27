# GUVI - DAY 34

## Design DB model for zen class
---

1. First we create a database for our model.

```
create database zenclass;

```

2.  Understanding our zen portal, we define the entities in our model. Some of the entities in our model are:

    > - Students
    > - Employees
    > - Tasks
    > - Courses
    > - Queries
    > - Companies

3.  After defining the entities, we draw relationships among the entities. There are three types of relationships in MySQL:

    > - One to One
    > - One to Many or Many to One
    > - Many to Many

> - A detailed document about the Entities chosen and their relationships are provided in the documentation attached. [Doc]()

4.  Now, using the MySQL CREATE query, we define the schema of our database. [Source File](./Schema.sql)

5.  Now that we have got our schema, we populate our database using data from the data file. [Source File](./Data.sql)

6.  Now that the model is designed, to verify our database model we solve some of the real-time scenarios from our zen portal.

    > - Establishing Leaderboard by Batch.

        `
        SELECT s.STUDENT_ID,
        s.STUDENT_NAME,
        SUM(ts.GRADE + p.MARKS + mi.MARKS) as TOTAL_MARKS
        from Students s
        JOIN
        Batches b ON s.STUDENT_ID = b.STUDENT_ID
        LEFT JOIN
        TaskSubmissions ts ON s.STUDENT_ID = ts.STUDENT_ID
        LEFT JOIN
        MockInterviews mi ON s.STUDENT_ID = mi.STUDENT_ID
        LEFT JOIN
        Projects p ON s.STUDENT_ID = p.STUDENT_ID
        WHERE
        b.BATCH_ID = 1
        GROUP BY
        s.STUDENT_ID, s.STUDENT_NAME
        ORDER BY
        TOTAL_MARKS DESC;
        `

    > - Today's Session for a batch.

        `
        SELECT
        s.SESSION_ID,
        s.MEETING_LINK,
        s.PASSWORD,
        s.SESSION_DATE,
        s.SESSION_TIME,
        s.TITLE,
        s.DESCRIPTION,
        e.EMPLOYEE_NAME AS MENTOR_NAME
        FROM
        Sessions s
        JOIN
        Employees e ON s.MENTOR_ID = e.EMPLOYEE_ID
        WHERE
        s.BATCH_ID = 1
        AND s.SESSION_DATE = CURDATE();

        `

    > - Fetch me the number of Students who have added a feedback to a given session.

        `
        SELECT
        COUNT(DISTINCT STUDENT_ID) AS NUMBER_OF_STUDENTS
        FROM
        Feedbacks
        WHERE
        SESSION_ID = 1;
        `

    > - Most number of Leave taken by a student.

        `
        SELECT
        STUDENT_ID,
        COUNT(*) AS NUM_LEAVE_APPLICATIONS
        FROM
        AbsenteeRecords
        GROUP BY
        STUDENT_ID
        ORDER BY
        NUM_LEAVE_APPLICATIONS DESC
        LIMIT 1;
        `
    ---
