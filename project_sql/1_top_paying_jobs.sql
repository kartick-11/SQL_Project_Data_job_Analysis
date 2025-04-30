/*
Question: What are the top-paying Data Analyst jobs?
- Identify the 10 highest-paying Data Analyst roles that are available remotely.
- Only include job postings with specified salary values (exclude NULLs).
- Order results by salary in descending order to highlight top-paying opportunities.
- Why? This analysis helps Data Analysts find the most lucrative remote job opportunities.
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM 
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;