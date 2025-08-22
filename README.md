# My QA Automation Engineer Portfolio

## About Me 👋

Hi, my name is Rendi Firmansyah. I am a highly motivated professional transitioning into a career as a QA Engineer. My journey began with 2 years of experience as a Software Quality Assurance professional in **digital banking at PT Bank Central Asia Tbk (BCA)**. This role not only provided me with a deep understanding of banking applications and business processes  but also ignited my passion for ensuring software quality.

I am currently on a focused path to become a proficient QA Automation Engineer. I've been diligently learning and practicing various QA automation tools through extensive self-study and dedicated courses. My strong analytical thinking skills, developed through my background in Chemical Engineering, combined with my practical QA experience, enable me to approach problem-solving with a comprehensive and detail-oriented mindset.

My main focus at the moment is on continuously expanding my expertise in key QA automation tools like Cypress, Postman, and mySQL. I am also actively exploring other tools such as Katalon, and JMeter, and improving my proficiency in JavaScript, Java, and Git. I am committed to leveraging my unique background and strong drive to excel in this exciting field.

## My Experience 💻

My professional experience started as a Software Quality Assurance professional at **PT Bank Central Asia Tbk (BCA)** from March 2022 to March 2024. In this role, I handled application projects with a specific focus on international banking, trade and payment support, and applications for special segment customers.

Key responsibilities and achievements included:

* Developing comprehensive test plans, including objectives, scope, and timelines, to ensure effective testing strategies.
* Designing and documenting detailed test cases based on project requirements, outlining test steps, expected results, and test data configurations.
* Executing manual and User Acceptance Testing (UAT) to identify defects, bugs, and issues in software applications.
* Suggesting process improvements and enhancements to testing methodologies, tools, and frameworks to optimize testing efficiency and effectiveness.
* Monitoring and creating implementation reports, and guiding users on implemented features.
* Staying up-to-date with industry best practices and emerging trends in software testing to continuously enhance skills and knowledge.

This experience has solidified my understanding of quality assurance principles and the critical role QA plays in the software development lifecycle, especially within a demanding environment like digital banking.

## My Projects & Tools 🛠️
Here you will find a collection of my personal projects demonstrating my practical skills in QA Automation.

### API Test Automation (Postman)

This section showcases my API testing capabilities using Postman with two distinct projects.

#### 1. Simple Grocery Store API Automation

* **Description:** This project involves automating API tests for a simulated grocery store, covering core functionalities like checking API status, retrieving product lists, managing shopping carts (creating, adding items, updating quantities, deleting items), registering API clients, and managing orders (creating, retrieving, updating, and deleting orders). It includes a comprehensive set of automated tests with assertions to verify responses and data integrity throughout the user flow.
* **API Used:** [Simple Grocery Store API](https://simple-grocery-store-api.glitch.me/)
* **Tools Used:** Postman
* **Key Features Demonstrated:**
    * GET, POST, PUT, PATCH, DELETE HTTP Methods.
    * Assertions for status codes, response body content, and data types.
    * Using environment variables (e.g., `{{baseUrl}}`, `{{productId}}`, `{{cartId}}`, `{{orderId}}`, `{{accessToken}}`) for dynamic data handling. 
    * Chaining requests to simulate complex user workflows (e.g., creating a cart then adding items to it).
    * Basic API client registration and token handling (bearer token).
* **Link to Project:** [Simple Grocery Store API Collection on GitHub](https://github.com/rendifirman1/QA-Automation-Engineer-Portfolio/blob/main/Simple%20Grocery%20Store%20API.postman_collection.json) 

#### 2. Trello API Automation

* **Description:** This project demonstrates API testing for the Trello platform, focusing on common board and card management operations. It includes automated tests for creating, retrieving, updating, and deleting Trello boards, lists (TODO, DONE), and cards, simulating a basic task management workflow. Assertions are implemented to validate successful operations and data consistency.
* **API Used:** [Trello API](https://developer.atlassian.com/cloud/trello/guides/rest-api/api-introduction/)
* **Tools Used:** Postman
* **Key Features Demonstrated:**
    * GET, POST, PUT, DELETE HTTP Methods.
    * Assertions for status codes and response body verification (e.g., board created, card moved, list status).
    * Using collection and environment variables (e.g., `{{baseUrl}}`, `{{boardId}}`, `{{todoListId}}`, `{{doneListId}}`, `{{cardId}}`) for dynamic data handling and chaining requests. 
    * Implementing pre-request scripts for data manipulation (e.g., incrementing `boardNumber`). 
    * **Note:** API keys and tokens are externalized/redacted for security.
* **Link to Project:** [Trello API Collection on GitHub](https://github.com/rendifirman1/QA-Automation-Engineer-Portfolio/blob/main/Trello%20API.postman_collection.json)

#### Web UI Automation (Cypress)

* **Description:** This project demonstrates my foundational skills in web UI automation using Cypress and JavaScript. It contains a suite of automated tests covering essential user flows and data management operations for a web application.
* **Tools Used:** Cypress, JavaScript
* **Test Scenarios Covered:**
    * User login functionality.
    * Creating new user accounts/data.
    * Editing existing user data.
    * Deleting user data.
    * Verifying data output after login.
* **Link to Project:** [Cypress Web Automation Scripts on GitHub](https://github.com/rendifirman1/QA-Automation-Engineer-Portfolio/tree/main/cypress)

### Katalon Studio - Demo Project

## **Description:**
This project demonstrates my ability to create and manage automated test cases in **Katalon Studio**.  
It includes test cases created in both **Manual Mode** and **Script Mode**, as well as using the **Record & Playback** feature.

## 📂 Project Content
- **Test Cases/Demo**
  - `ManualModeDemo` → Simple test created in manual mode
  - `RecordModeDemo` & `RecordModeDemo2` → Test cases generated from record & playback
  - `ScriptModeDemo` & `ScriptModeDemo2` → Test cases created/edited directly in script mode (Groovy/Java)
- **Test Suites**
  - `TestSuiteDemo1` → Contains selected test cases
  - `TestSuiteCollectionDemo` → Example of running multiple test suites in sequence
- **Reports** → Test execution results (with logs & screenshots)
- **Screenshots** → Captured images from test runs

## 🎯 Skills Showcased
- Web UI automation using Katalon Studio  
- Different approaches: Manual, Record & Playback, and Script Mode  
- Creating and organizing Test Suites  
- Running collections of test suites  
- Generating test reports and screenshots  

## 🚀 How to Run
1. Clone this repo
2. Open with **Katalon Studio**
3. Run `TestSuiteDemo1` or `TestSuiteCollectionDemo`
4. View results in `Reports/`


### Database Testing (MySQL)

This section demonstrates my strong understanding of SQL and its practical application in database testing, focusing on data manipulation, validation, and complex data retrieval.

* **Description:** This project contains a collection of SQL scripts (`JOIN.sql`, `COUNT.sql`, `DELETE.sql`, `UPDATE.sql`, `INSERT.sql`, `WHERE.sql`) designed to showcase fundamental and advanced SQL operations crucial for Quality Assurance Engineers. These scripts cover essential data manipulation (CRUD operations), complex data retrieval using various JOIN types, data aggregation, filtering, and database management concepts. They reflect my ability to interact directly with databases for data validation, integrity checks, and test data preparation.
* **Tools Used:** MySQL (SQL queries)
* **Key Features Demonstrated:**
    * **Data Manipulation Language (DML):** `INSERT`, `UPDATE`, `DELETE` operations for managing test data. 
    * **Data Query Language (DQL):** Extensive use of `SELECT` statements with `WHERE` clauses for precise data filtering. 
    * **Joins:** Implementation of `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and `CROSS JOIN` for comprehensive data validation across multiple tables. 
    * **Aggregate Functions:** Usage of `COUNT`, `SUM`, `MIN`, `MAX`, `AVG` with `GROUP BY` and `HAVING` clauses for data analysis and verification. 
    * **Database Schema Manipulation (DDL):** Examples of `CREATE TABLE`, `DROP TABLE`, and `ALTER TABLE` for understanding database structure. 
    * **Error Handling & Best Practices:** Includes examples of managing SQL modes and handling common errors (e.g., `error code 1055`). 
    * **Order and Grouping:** Applying `ORDER BY` and `GROUP BY` for structured data retrieval and analysis. 
* **Link to Project:** [MySQL QA Queries on GitHub](https://github.com/rendifirman1/QA-Automation-Engineer-Portfolio/tree/main/mySQL)

## My Skills 🚀

* **QA Principles:** Test Planning, Test Case Design, Bug Reporting, User Acceptance Testing (UAT), Functional Testing, End-to-End Testing, Quality Assurance Methodologies, Business Understanding.
* **Automation Tools:** Postman, Cypress, mySQL (for database validation), Jira (for project/bug tracking).
* **Programming Languages:** JavaScript (foundational for Cypress), SQL.
* **Other Tools/Concepts:** Git (currently familiarizing with basic commands for version control), Microsoft Office (Word, Excel, Powerpoint).

## Learning Journey & Certifications 🎓

I am continuously investing in my learning to build a robust skill set in QA Engineering:

* **Bootcamp QA Engineer (Digita Skola) - 2024** 
* **The Complete 2024 Software Testing Bootcamp (Udemy) - 2024**
* [**Quality Assurance Engineer : Cypress Dari Awal Sampai Mahir (Udemy) - 2025**](https://www.udemy.com/certificate/UC-d875f9d6-0d5a-47ce-a16c-16f47e1d804c/)
* [**SQL - MySQL for Data Analytics and Business Intelligence**](https://www.udemy.com/certificate/UC-9a5fdd0a-b72d-4581-95bf-390f5b5093d9/)
* [**3-in-1 Banking, Banking Risk and Compliance Masterclass**](http://ude.my/UC-d0ece7bf-f859-47b3-b33f-a402a204a6b5)
* **Intensive English Program (LIA) - 2021** 
* **Bachelor Degree in Chemical Engineering, University of Jambi - 2017-2021** (GPA 3.54/4.00) 

My background in Chemical Engineering has equipped me with strong analytical and problem-solving skills, which are highly transferable to software quality assurance.

## Let's Connect! 🤝

* **LinkedIn Profile:** [https://linkedin.com/in/rendifirmansyah](https://linkedin.com/in/rendifirmansyah)
* **Email:** rendifirmansyah14@gmail.com
