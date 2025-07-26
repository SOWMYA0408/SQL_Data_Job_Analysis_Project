/*
Answer: What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and 
    helps identify the most financially rewarding skills to acquire or improve
*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25;


/*
[
  {
    "skills": "golang",
    "avg_salary": "145000"
  },
  {
    "skills": "redis",
    "avg_salary": "128500"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "118000"
  },
  {
    "skills": "dynamodb",
    "avg_salary": "115000"
  },
  {
    "skills": "pytorch",
    "avg_salary": "112500"
  },
  {
    "skills": "tensorflow",
    "avg_salary": "112500"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "111175"
  },
  {
    "skills": "npm",
    "avg_salary": "111175"
  },
  {
    "skills": "unify",
    "avg_salary": "111175"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "108883"
  },
  {
    "skills": "jupyter",
    "avg_salary": "105606"
  },
  {
    "skills": "mongo",
    "avg_salary": "104625"
  },
  {
    "skills": "kafka",
    "avg_salary": "104529"
  },
  {
    "skills": "airflow",
    "avg_salary": "104342"
  },
  {
    "skills": "ssis",
    "avg_salary": "104322"
  },
  {
    "skills": "ibm cloud",
    "avg_salary": "104083"
  },
  {
    "skills": "qlik",
    "avg_salary": "102120"
  },
  {
    "skills": "cassandra",
    "avg_salary": "101250"
  },
  {
    "skills": "nosql",
    "avg_salary": "100750"
  },
  {
    "skills": "chef",
    "avg_salary": "100500"
  },
  {
    "skills": "swift",
    "avg_salary": "100250"
  },
  {
    "skills": "keras",
    "avg_salary": "100000"
  },
  {
    "skills": "puppet",
    "avg_salary": "100000"
  },
  {
    "skills": "chainer",
    "avg_salary": "100000"
  },
  {
    "skills": "mxnet",
    "avg_salary": "100000"
  }
]
*/