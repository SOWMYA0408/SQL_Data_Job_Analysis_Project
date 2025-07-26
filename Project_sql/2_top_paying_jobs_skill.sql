/*
Question: What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest-paying Data Analyst jobs from first query
- Add the specific skills required for these roles
- Why? It provides a detailed look at which high-paying jobs demand certain skills, 
    helping job seekers understand which skills to develop that align with top salaries
*/

WITH top_paying_jobs AS (
SELECT
    jpf.job_id,
    jpf.job_title,
    jpf.job_location,
    jpf.job_schedule_type,
    jpf.salary_year_avg,
    jpf.job_posted_date,
    name AS company_name
FROM
    job_postings_fact AS jpf
INNER JOIN company_dim AS cd ON jpf.company_id = cd.company_id
WHERE
    jpf.job_title_short = 'Data Analyst' AND
    jpf.job_location = 'Bengaluru, Karnataka, India' AND
    jpf.salary_year_avg IS NOT NULL 
    AND jpf.job_schedule_type = 'Full-time'
ORDER BY
    jpf.salary_year_avg DESC
LIMIT 10
)

SELECT 
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC;

/*
[
  {
    "job_id": 954793,
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-01-12 13:14:51",
    "company_name": "Bosch Group",
    "skills": "sql"
  },
  {
    "job_id": 954793,
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-01-12 13:14:51",
    "company_name": "Bosch Group",
    "skills": "python"
  },
  {
    "job_id": 954793,
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-01-12 13:14:51",
    "company_name": "Bosch Group",
    "skills": "mongodb"
  },
  {
    "job_id": 954793,
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-01-12 13:14:51",
    "company_name": "Bosch Group",
    "skills": "mongo"
  },
  {
    "job_id": 954793,
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-01-12 13:14:51",
    "company_name": "Bosch Group",
    "skills": "mysql"
  },
  {
    "job_id": 954793,
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-01-12 13:14:51",
    "company_name": "Bosch Group",
    "skills": "postgresql"
  },
  {
    "job_id": 954793,
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-01-12 13:14:51",
    "company_name": "Bosch Group",
    "skills": "sql server"
  },
  {
    "job_id": 954793,
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-01-12 13:14:51",
    "company_name": "Bosch Group",
    "skills": "mongodb"
  },
  {
    "job_id": 954793,
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-01-12 13:14:51",
    "company_name": "Bosch Group",
    "skills": "azure"
  },
  {
    "job_id": 954793,
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-01-12 13:14:51",
    "company_name": "Bosch Group",
    "skills": "aws"
  },
  {
    "job_id": 954793,
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-01-12 13:14:51",
    "company_name": "Bosch Group",
    "skills": "redshift"
  },
  {
    "job_id": 954793,
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-01-12 13:14:51",
    "company_name": "Bosch Group",
    "skills": "oracle"
  },
  {
    "job_id": 954793,
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-01-12 13:14:51",
    "company_name": "Bosch Group",
    "skills": "spark"
  },
  {
    "job_id": 954793,
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-01-12 13:14:51",
    "company_name": "Bosch Group",
    "skills": "hadoop"
  },
  {
    "job_id": 954793,
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-01-12 13:14:51",
    "company_name": "Bosch Group",
    "skills": "power bi"
  },
  {
    "job_id": 1041666,
    "job_title": "Data Architect - Data Migration",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-05-06 20:30:35",
    "company_name": "Bosch Group",
    "skills": "oracle"
  },
  {
    "job_id": 1041666,
    "job_title": "Data Architect - Data Migration",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-05-06 20:30:35",
    "company_name": "Bosch Group",
    "skills": "sap"
  },
  {
    "job_id": 895116,
    "job_title": "Data Analyst 2",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-03-29 07:34:56",
    "company_name": "Publicis Groupe",
    "skills": "excel"
  },
  {
    "job_id": 895116,
    "job_title": "Data Analyst 2",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-03-29 07:34:56",
    "company_name": "Publicis Groupe",
    "skills": "power bi"
  },
  {
    "job_id": 895116,
    "job_title": "Data Analyst 2",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-03-29 07:34:56",
    "company_name": "Publicis Groupe",
    "skills": "word"
  },
  {
    "job_id": 895116,
    "job_title": "Data Analyst 2",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-03-29 07:34:56",
    "company_name": "Publicis Groupe",
    "skills": "powerpoint"
  },
  {
    "job_id": 1578311,
    "job_title": "Data Analyst - Food Growth",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-07-21 22:13:05",
    "company_name": "GoTo Group",
    "skills": "sql"
  },
  {
    "job_id": 1578311,
    "job_title": "Data Analyst - Food Growth",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-07-21 22:13:05",
    "company_name": "GoTo Group",
    "skills": "python"
  },
  {
    "job_id": 601909,
    "job_title": "Process and Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-06-27 09:34:23",
    "company_name": "Bosch Group",
    "skills": "sql"
  },
  {
    "job_id": 601909,
    "job_title": "Process and Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-06-27 09:34:23",
    "company_name": "Bosch Group",
    "skills": "python"
  },
  {
    "job_id": 601909,
    "job_title": "Process and Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-06-27 09:34:23",
    "company_name": "Bosch Group",
    "skills": "sap"
  },
  {
    "job_id": 1025126,
    "job_title": "Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-15 21:30:03",
    "company_name": "Truecaller",
    "skills": "sql"
  },
  {
    "job_id": 1025126,
    "job_title": "Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-15 21:30:03",
    "company_name": "Truecaller",
    "skills": "spark"
  },
  {
    "job_id": 1025126,
    "job_title": "Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-15 21:30:03",
    "company_name": "Truecaller",
    "skills": "tableau"
  },
  {
    "job_id": 1643119,
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-08-08 10:12:38",
    "company_name": "Bosch Group",
    "skills": "sql"
  },
  {
    "job_id": 1643119,
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-08-08 10:12:38",
    "company_name": "Bosch Group",
    "skills": "python"
  },
  {
    "job_id": 1643119,
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-08-08 10:12:38",
    "company_name": "Bosch Group",
    "skills": "r"
  },
  {
    "job_id": 1643119,
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-08-08 10:12:38",
    "company_name": "Bosch Group",
    "skills": "azure"
  },
  {
    "job_id": 1643119,
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-08-08 10:12:38",
    "company_name": "Bosch Group",
    "skills": "matplotlib"
  },
  {
    "job_id": 1643119,
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-08-08 10:12:38",
    "company_name": "Bosch Group",
    "skills": "plotly"
  },
  {
    "job_id": 1643119,
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-08-08 10:12:38",
    "company_name": "Bosch Group",
    "skills": "tableau"
  },
  {
    "job_id": 1643119,
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-08-08 10:12:38",
    "company_name": "Bosch Group",
    "skills": "power bi"
  },
  {
    "job_id": 1643119,
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-08-08 10:12:38",
    "company_name": "Bosch Group",
    "skills": "kubernetes"
  },
  {
    "job_id": 1643119,
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-08-08 10:12:38",
    "company_name": "Bosch Group",
    "skills": "docker"
  },
  {
    "job_id": 682096,
    "job_title": "Data Analyst - Finance",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-07-13 00:11:51",
    "company_name": "ZeroFox",
    "skills": "sheets"
  },
  {
    "job_id": 682096,
    "job_title": "Data Analyst - Finance",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-07-13 00:11:51",
    "company_name": "ZeroFox",
    "skills": "flow"
  },
  {
    "job_id": 563703,
    "job_title": "Data Analyst - Transport",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-06-27 13:34:25",
    "company_name": "GoTo Group",
    "skills": "sql"
  },
  {
    "job_id": 563703,
    "job_title": "Data Analyst - Transport",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-06-27 13:34:25",
    "company_name": "GoTo Group",
    "skills": "swift"
  },
  {
    "job_id": 563703,
    "job_title": "Data Analyst - Transport",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-06-27 13:34:25",
    "company_name": "GoTo Group",
    "skills": "tableau"
  },
  {
    "job_id": 563703,
    "job_title": "Data Analyst - Transport",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-06-27 13:34:25",
    "company_name": "GoTo Group",
    "skills": "git"
  }
]
*/