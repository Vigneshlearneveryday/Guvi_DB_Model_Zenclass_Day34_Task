INSERT INTO Students (STUDENT_ID, STUDENT_NAME, MOBILE, USERNAME, PASSWORD, YEARS_OF_EXPERIENCE, DEGREE, YEAR_OF_PASSING, CGPA, COLLEGE_NAME)
VALUES
(1, 'Rahul', '1234567890', 'alicej', 'alicej123', 2, 'B.Tech', 2020, 8.5, 'Tech University'),
(2, 'Vishwanath', '1234567891', 'bobsmith', 'bobsmith256', 1, 'B.Sc', 2019, 7.8, 'Science College'),
(3, 'Srini', '1234567892', 'carolw', 'carolw987', 3, 'B.E', 2021, 8.0, 'Engineering College'),
(4, 'David', '1234567893', 'davidb', 'davidb587', 0, 'B.Tech', 2018, 6.5, 'Business School'),
(5, 'Mohammad', '1234567894', 'eved', 'eved4210', 4, 'B.Tech', 2017, 9.0, 'Management Institute');

INSERT INTO Roles (ROLE_ID, ROLE_NAME)
VALUES
(1, 'Admin'),
(2, 'Coordinator'),
(3, 'Mentor'),
(4, 'Support');

INSERT INTO Employees (EMPLOYEE_ID, EMPLOYEE_NAME, MOBILE, USERNAME, PASSWORD, YEARS_OF_EXPERIENCE, SALARY, ROLE_ID)
VALUES
(1, 'Vijay', '9876543210', 'johndoe', 'securepass1', 5, 60000, 1),
(2, 'Mohan', '9876543211', 'janesmith', 'securepass2', 3, 45000, 2),
(3, 'Vasanth', '9876543212', 'mikej', 'securepass3', 7, 70000, 3),
(4, 'Venkat', '9876543213', 'saraw', 'securepass4', 4, 50000, 4),
(5, 'Tom', '9876543214', 'tomc', 'securepass5', 2, 40000, 2),
(6, 'Sam', '9876543218', 'samalt', 'securepass6', 2, 50000, 4),
(7, 'Iliyas', '9876543275', 'muskel', 'securepas7',9, 50000, 4);

INSERT INTO EmployeeLeaveRecords (LEAVE_ID, EMPLOYEE_ID, NO_OF_DAYS, FROM_DATE, TO_DATE, REASON)
VALUES
(1, 1, 5, '2024-06-10', '2024-06-15', 'Medical Leave'),
(2, 2, 3, '2024-07-01', '2024-07-03', 'Personal Leave'),
(3, 3, 2, '2024-08-05', '2024-08-06', 'Conference'),
(4, 4, 4, '2024-09-20', '2024-09-23', 'Family Function'),
(5, 5, 1, '2024-10-10', '2024-10-10', 'Sick Leave');

INSERT INTO Courses (COURSE_ID, COURSE_NAME, FEES, DURATION_IN_MONTHS, SYLLABUS)
VALUES
(1, 'Data Science', 1500.00, 6, 'Data Analysis, Machine Learning, Deep Learning, Statistics'),
(2, 'Web Development', 1200.00, 6, 'HTML, CSS, JavaScript, React, Node.js'),
(3, 'Digital Marketing', 1000.00, 4, 'SEO, SEM, Social Media, Email Marketing'),
(4, 'Cyber Security', 2000.00, 7, 'Network Security, Cryptography, Ethical Hacking'),
(5, 'Project Management', 1800.00, 6, 'Agile, Scrum, Risk Management, Budgeting');

INSERT INTO Batches (BATCH_ID, BATCH_NAME, COURSE_ID, COORDINATOR_ID, STUDENT_ID, TYPE, TIMING)
VALUES
(1, 'Batch A', 1, 2, 1, 'Weekday', '10:00 AM'),
(2, 'Batch B', 2, 2, 2, 'Weekday', '2:00 PM'),
(3, 'Batch C', 3, 2, 3, 'Weekend', '10:00 AM'),
(4, 'Batch D', 4, 5, 4, 'Weekend', '6:00 PM'),
(5, 'Batch E', 5, 5, 5, 'Weekend', '10:00 AM');

INSERT INTO Sessions (SESSION_ID, BATCH_ID, MEETING_LINK, PASSWORD, SESSION_DATE, SESSION_TIME, MENTOR_ID, TITLE, DESCRIPTION, IS_ADDITIONAL)
VALUES
(1, 1, 'http://meet.example.com/1', 'guvi', '2024-06-20', '10:00:00', 3, 'Introduction to Data Science', 'Overview of Data Science', FALSE),
(2, 2, 'http://meet.example.com/2', 'guvi', '2024-06-21', '14:00:00', 3, 'HTML Basics', 'Introduction to HTML', FALSE),
(3, 3, 'http://meet.example.com/3', 'guvi', '2024-06-22', '10:00:00', 3, 'SEO Fundamentals', 'Basics of SEO', FALSE),
(4, 4, 'http://meet.example.com/4', 'guvi', '2024-06-23', '18:00:00', 3, 'Network Security', 'Introduction to Network Security', FALSE),
(5, 5, 'http://meet.example.com/5', 'guvi', '2024-06-24', '10:00:00', 3, 'Agile Methodology', 'Overview of Agile', FALSE);

INSERT INTO Recordings (RECORDING_ID, SESSION_ID, LINK, PASSWORD)
VALUES
(1, 1, 'http://recordings.example.com/1', 'recpass1'),
(2, 2, 'http://recordings.example.com/2', 'recpass2'),
(3, 3, 'http://recordings.example.com/3', 'recpass3'),
(4, 4, 'http://recordings.example.com/4', 'recpass4'),
(5, 5, 'http://recordings.example.com/5', 'recpass5');

INSERT INTO Task (TASK_ID, QUESTION, SESSION_ID)
VALUES
(1, 'What is Data Science?', 1),
(2, 'Explain the structure of an HTML document.', 2),
(3, 'Describe the main aspects of SEO.', 3),
(4, 'What are the common types of network security attacks?', 4),
(5, 'What are the key principles of Agile methodology?', 5);

INSERT INTO Queries (QUERY_ID, CATEGORY, LANGUAGE, TITLE, DESCRIPTION, ATTACHMENTS, STATUS, EMPLOYEE_ID, CREATED_AT)
VALUES
(1, 'Zen Class Doubt', 'English', 'Regarding Task', 'Can you explain the task once again', 'attachment1.pdf', 'Open', null, CURRENT_TIMESTAMP),
(2, 'Placement Related', 'Tamil', 'When will placements begin', 'When will placements begin?', 'attachment2.pdf', 'Closed', 6, CURRENT_TIMESTAMP),
(3, 'Coordination Related', 'Hindi', 'Why my task is not graded yet', 'When all my tasks will be graded?', 'attachment3.pdf', 'Assigned', 7, CURRENT_TIMESTAMP),
(4, 'Pre-Bootcamp Related', 'English', 'When will roadmap start', 'When will roadmap start?', 'attachment4.pdf', 'Resolved', 4, CURRENT_TIMESTAMP),
(5, 'Pre-Bootcamp Related', 'Tamil', 'When is the last date to pay the fees', 'What are the payment options? When is last date?.', 'attachment5.pdf', 'Open', null, CURRENT_TIMESTAMP);

INSERT INTO Companies (COMPANY_ID, COMPANY_NAME, LOCATION, TIER)
VALUES
(1, 'TechCorp', 'New York', 1),
(2, 'WebSolutions', 'San Francisco', 2),
(3, 'DataAnalytics', 'Chicago', 1),
(4, 'MarketingHub', 'Los Angeles', 3),
(5, 'SecureNet', 'Seattle', 1);

INSERT INTO Positions (POSITION_ID, COMPANY_ID, NAME, PACKAGE, DESCRIPTION, NO_OF_OPENINGS, NATURE)
VALUES
(1, 1, 'Data Scientist', 120000.00, 'Analyze and interpret complex data.', 5, 'Full-time'),
(2, 2, 'Web Developer', 90000.00, 'Develop and maintain websites.', 3, 'Part-time'),
(3, 3, 'SEO Specialist', 80000.00, 'Optimize websites for search engines.', 2, 'Full-time'),
(4, 4, 'Marketing Manager', 110000.00, 'Lead marketing campaigns.', 1, 'Full-time'),
(5, 5, 'Cyber Security Analyst', 130000.00, 'Protect systems from cyber threats.', 4, 'Full-time');

INSERT INTO AbsenteeRecords (ABSENTEE_ID, STUDENT_ID, NO_OF_DAYS, FROM_DATE, TO_DATE, REASON)
VALUES
(1, 1, 2, '2024-06-10', '2024-06-11', 'Medical reasons'),
(2, 2, 3, '2024-07-05', '2024-07-07', 'Family emergency'),
(3, 3, 1, '2024-08-01', '2024-08-01', 'Personal reasons'),
(4, 4, 4, '2024-09-15', '2024-09-18', 'Vacation'),
(5, 5, 2, '2024-10-20', '2024-10-21', 'Workshop');

INSERT INTO Feedbacks (FEEDBACK_ID, SESSION_ID, STUDENT_ID, CLASS_FEEDBACK, MENTOR_FEEDBACK, CLASS_RATING, MENTOR_RATING, KEY_TAKEAWAYS)
VALUES
(1, 1, 1, 'Very informative session.', 'Mentor explained concepts clearly.', 4.5, 4.7, 'Data analysis techniques'),
(2, 2, 2, 'Great practical examples.', 'Mentor was very helpful.', 4.2, 4.6, 'HTML basics'),
(3, 3, 3, 'Detailed session on SEO.', 'Mentor provided good insights.', 4.0, 4.5, 'SEO techniques'),
(4, 4, 4, 'Good coverage of network security.', 'Mentor was knowledgeable.', 4.3, 4.8, 'Types of attacks'),
(5, 5, 5, 'Clear explanation of Agile principles.', 'Mentor interacted well.', 4.6, 4.9, 'Agile methodology');

INSERT INTO Portfolios (PORTFOLIO_ID, STUDENT_ID, PORTFOLIO_LINK, GITHUB_LINK)
VALUES
(1, 1, 'http://portfolio.example.com/alice', 'http://github.com/alicej'),
(2, 2, 'http://portfolio.example.com/bob', 'http://github.com/bobsmith'),
(3, 3, 'http://portfolio.example.com/carol', 'http://github.com/carolw'),
(4, 4, 'http://portfolio.example.com/david', 'http://github.com/davidb'),
(5, 5, 'http://portfolio.example.com/eve', 'http://github.com/eved');

INSERT INTO Projects (PROJECT_ID, STUDENT_ID, PROJECT_LINK, GITHUB_LINK)
VALUES
(1, 1, 'http://project.example.com/alice_project', 'http://github.com/alicej/project'),
(2, 2, 'http://project.example.com/bob_project', 'http://github.com/bobsmith/project'),
(3, 3, 'http://project.example.com/carol_project', 'http://github.com/carolw/project'),
(4, 4, 'http://project.example.com/david_project', 'http://github.com/davidb/project'),
(5, 5, 'http://project.example.com/eve_project', 'http://github.com/eved/project');

INSERT INTO MockInterviews (MOCK_INTERVIEW_ID, STUDENT_ID, EMPLOYEE_ID, MARKS)
VALUES
(1, 1, 3, 85.50),
(2, 2, 3, 78.00),
(3, 3, 3, 82.75),
(4, 4, 3, 90.00),
(5, 5, 3, 88.25);

INSERT INTO Applications (APPLICATION_ID, STUDENT_ID, POSITION_ID)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

INSERT INTO TaskSubmissions (SUBMISSION_ID, STUDENT_ID, TASK_ID, GITHUB_LINK, DEPLOY_LINK, GRADE, EMPLOYEE_ID)
VALUES
(1, 1, 1, 'http://github.com/alicej/task1', 'http://deploy.example.com/alice_task1', 90.0, 3),
(2, 2, 2, 'http://github.com/bobsmith/task2', 'http://deploy.example.com/bob_task2', 85.0, 3),
(3, 3, 3, 'http://github.com/carolw/task3', 'http://deploy.example.com/carol_task3', 88.0, 3),
(4, 4, 4, 'http://github.com/davidb/task4', 'http://deploy.example.com/david_task4', 92.0, 3),
(5, 5, 5, 'http://github.com/eved/task5', 'http://deploy.example.com/eve_task5', 89.0, 3);

INSERT INTO Testimonials (TESTIMONIAL_ID, STUDENT_ID, PHOTO, VIDEO_URL, DESCRIPTION)
VALUES
(1, 1, 'http://photos.example.com/alice.jpg', 'http://videos.example.com/alice.mp4', 'Alice found the course very beneficial and engaging.'),
(2, 2, 'http://photos.example.com/bob.jpg', 'http://videos.example.com/bob.mp4', 'Bob appreciated the practical examples provided.'),
(3, 3, 'http://photos.example.com/carol.jpg', 'http://videos.example.com/carol.mp4', 'Carol gained a lot of insights and knowledge.'),
(4, 4, 'http://photos.example.com/david.jpg', 'http://videos.example.com/david.mp4', 'David found the course well-structured and informative.'),
(5, 5, 'http://photos.example.com/eve.jpg', 'http://videos.example.com/eve.mp4', 'Eve enjoyed the interactive sessions with the mentor.');

INSERT INTO PlacementRecords (PLACEMENT_RECORD_ID, STUDENT_ID, COMPANY_ID, POSITION_ID, BATCH_ID)
VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2),
(3, 3, 3, 3, 3),
(4, 4, 4, 4, 4),
(5, 5, 5, 5, 5);

INSERT INTO WorkPreferences (PREFERNCE_ID, STUDENT_ID, PREFERENCE_1, PREFERENCE_2, PREFERENCE_3)
VALUES
(1, 1, 'New York', 'San Francisco', 'Seattle'),
(2, 2, 'Chicago', 'Los Angeles', 'Austin'),
(3, 3, 'Boston', 'Houston', 'Denver'),
(4, 4, 'San Diego', 'Phoenix', 'Dallas'),
(5, 5, 'Miami', 'Atlanta', 'Charlotte');

INSERT INTO Certifications (CERTIFICATION_ID, STUDENT_ID, CERTIFICATE_URL)
VALUES
(1,1, 'http://certificates.example.com/alice_certificate.pdf'),
(2,2, 'http://certificates.example.com/bob_certificate.pdf'),
(3,3, 'http://certificates.example.com/carol_certificate.pdf'),
(4,4, 'http://certificates.example.com/david_certificate.pdf'),
(5,5, 'http://certificates.example.com/eve_certificate.pdf');