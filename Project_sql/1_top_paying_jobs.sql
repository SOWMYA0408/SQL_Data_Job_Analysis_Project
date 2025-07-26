
/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available in Bangalore location with fulltime (My preference)
- Focuses on job postings with specified salaries (remove nulls)
- BONUS: Include company names of top 10 roles
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into employment options and location flexibility.
*/

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
LIMIT 10;

/*
[
  {
    "job_id": 1041666,
    "job_title": "Data Architect - Data Migration",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-05-06 20:30:35",
    "company_name": "Bosch Group"
  },
  {
    "job_id": 954793,
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-01-12 13:14:51",
    "company_name": "Bosch Group"
  },
  {
    "job_id": 1578311,
    "job_title": "Data Analyst - Food Growth",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-07-21 22:13:05",
    "company_name": "GoTo Group"
  },
  {
    "job_id": 1643119,
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-08-08 10:12:38",
    "company_name": "Bosch Group"
  },
  {
    "job_id": 601909,
    "job_title": "Process and Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-06-27 09:34:23",
    "company_name": "Bosch Group"
  },
  {
    "job_id": 1025126,
    "job_title": "Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-15 21:30:03",
    "company_name": "Truecaller"
  },
  {
    "job_id": 895116,
    "job_title": "Data Analyst 2",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-03-29 07:34:56",
    "company_name": "Publicis Groupe"
  },
  {
    "job_id": 1112323,
    "job_title": "Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-09-01 06:17:34",
    "company_name": "Myntra"
  },
  {
    "job_id": 682096,
    "job_title": "Data Analyst - Finance",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-07-13 00:11:51",
    "company_name": "ZeroFox"
  },
  {
    "job_id": 563703,
    "job_title": "Data Analyst - Transport",
    "job_location": "Bengaluru, Karnataka, India",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-06-27 13:34:25",
    "company_name": "GoTo Group"
  }
]

*/