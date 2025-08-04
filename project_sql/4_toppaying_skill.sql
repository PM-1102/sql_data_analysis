/*
Question : What are the top skills based on salary?
- Look at average salary associated with each skills for data analyst positions.
- Focused on roles with specified salaries, regardless of locations
- Why? it reveals how different skills impact salary levels for data analyst.
*/

SELECT
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
GROUP BY
    skills
ORDER BY
    avg_salary DESC  
LIMIT 25


/*

Here’s a quick analysis of the top 25 highest-paying skills for data analyst:

Specialized & Emerging Tech Pays More: Niche skills like Solidity, Hugging Face, and MXNet offer top salaries due to high demand and low talent availability.

 AI/ML & DevOps Integration: High-paying roles increasingly require tools like TensorFlow, Airflow, Terraform, and GitLab, showing a shift toward data analysts with machine learning and MLOps capabilities.
 
Cloud & Scalable Systems Are Key: Tools like VMware, Cassandra, and Couchbase indicate strong demand for analysts who can work with distributed, scalable data infrastructures.
*/