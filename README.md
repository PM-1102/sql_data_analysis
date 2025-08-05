💼 Data Analyst Job Market Analysis Using SQL
# 📊Introduction
Curious about what it takes to land a high-paying data analyst role? This project dives deep into the data analyst job market to uncover:

💰 Top-paying remote jobs

🧠 In-demand and high-paying skills

🎯 Optimal skills to prioritize for your career in data analytics

Built entirely with SQL, this project is your gateway to understanding how skills and salaries align in today’s data-driven world.

# 🗃️Data Background
The data was sourced as part of an SQL course project, featuring comprehensive job posting datasets including:

Job titles and salary information

Remote work availability

Employer details

Skills required for each position

The dataset was loaded and cleaned using PostgreSQL and CSV files.

# 🎯Project Goals
The analysis aimed to answer 5 key questions:

What are the top-paying data analyst jobs?

What skills are required for these top-paying jobs?

What are the most in-demand skills for data analysts?

Which skills are associated with the highest salaries?

What are the most optimal skills to learn (high demand + high salary)?

# 🛠️Tools & Technologies Used
PostgreSQL – For managing and querying the database

SQL – Core querying language for all analysis

Visual Studio Code – SQL editor and development environment

Git & GitHub – Version control and collaboration

# 🧪The Analysis
## 1️⃣ Top-Paying Data Analyst Jobs
Script: 1_top_paying_jobs.sql
Finds the top 10 remote data analyst jobs based on salary.

Insight: Salaries range from $184,000 to $255,000, with companies like AT&T, Pinterest, and SmartAsset topping the list.

sql
Copy
Edit
-- Highlights remote jobs with specified salaries
SELECT job_id, job_title, salary_year_avg, company_name
FROM job_postings_fact
...
LIMIT 10;
## 2️⃣ Skills for Top-Paying Jobs
Script: 2_top_paying_job_skill.sql
Connects top-paying jobs to their required skills.

Key Findings:

SQL appears in 80% of top-paying roles

Python, Tableau, and Azure are heavily favored

Tools like Pandas, Snowflake, and GitLab are common

## 3️⃣ Most In-Demand Skills
Script: 3_top_demanded_skill.sql
Identifies the most commonly requested skills in job listings.

Skill	Demand Count
SQL	7291
Excel	4611
Python	4330
Tableau	3745
Power BI	2609

Insight: Strong foundational skills like SQL and Excel remain essential across the board.

## 4️⃣ Top Paying Skills
Script: 4_toppaying_skill.sql
Ranks skills by average salary across roles.

Top 5 Highest-Paying Skills:

Skill	Avg Salary ($)
Solidity	222,600
Hugging Face	200,000
MXNet	199,827
Airflow	190,000
Terraform	180,000

Insight: Specialized tools in AI/ML, MLOps, and DevOps command premium salaries.

## 5️⃣ Most Optimal Skills to Learn
Script: 5_optimal_skill.sql
Combines demand and salary data to rank the best skills to learn.

Skill	Demand Count	Avg Salary ($)
Go	27	115,320
Snowflake	37	112,948
Azure	34	111,225
AWS	32	108,317
Java	17	106,906

Conclusion: Learn skills that are both highly demanded and well-compensated, like Go, Snowflake, and Cloud platforms (AWS, Azure).

# 📘 Database Setup
Step 1: Create Database
Script: 1_create_database.sql

sql
Copy
Edit
CREATE DATABASE sql_course;
Step 2: Load Data
Script: 3_modify_tables.sql
Use PostgreSQL's COPY command to load data from CSVs into tables:

company_dim

skills_dim

job_postings_fact

skills_job_dim

# 🎓 What I Learned
🧩 Advanced SQL Techniques: CTEs, JOINS, subqueries, and aggregations

📊 Data Interpretation: Transforming raw data into strategic job market insights

📈 Real-World Application: Understanding how to target job search and skill acquisition

🚀 End-to-End Workflow: From database creation to insight generation

# ✅ Conclusion
This project not only strengthened my SQL expertise, but also provided practical guidance for anyone aspiring to grow in the data analytics field.

🔎 By understanding which skills are in-demand and well-paid, you can align your learning with market reality
