SELECT
    skills,
    ROUND(AVG(salary_hour_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_hour_avg IS NOT NULL
    AND job_work_from_home = true
GROUP BY 
    skills
ORDER BY 
    avg_salary DESC
LIMIT 25

/*
Here's a breakdown of the results for top paying skills for Data Analysts:
- Data engineering and infrastructure skills pay the most. Redis, DynamoDB, Redshift, Kafka, Hadoop and NoSQL all rank high, so analysts who can work with pipelines and big data tools earn a premium over those who only query and visualize.
- Versatile programming and niche skills beat the basics. C# and GDPR tie for the top spot (76), followed by MATLAB, Scala and GCP. Core tools like Pandas and PostgreSQL sit at the bottom because nearly every posting lists them.
- Visualization and cloud tools land in the middle. Plotly and Jupyter (70) and GCP (68) rank above Seaborn (66), RShiny (65) and Matplotlib (57), so interactive and cloud-based tools pay more than static plotting.


[
  {
    "skills": "redis",
    "avg_salary": "76"
  },
  {
    "skills": "gdpr",
    "avg_salary": "76"
  },
  {
    "skills": "c#",
    "avg_salary": "76"
  },
  {
    "skills": "jupyter",
    "avg_salary": "70"
  },
  {
    "skills": "plotly",
    "avg_salary": "70"
  },
  {
    "skills": "dynamodb",
    "avg_salary": "70"
  },
  {
    "skills": "matlab",
    "avg_salary": "70"
  },
  {
    "skills": "gcp",
    "avg_salary": "68"
  },
  {
    "skills": "react",
    "avg_salary": "68"
  },
  {
    "skills": "seaborn",
    "avg_salary": "66"
  },
  {
    "skills": "rshiny",
    "avg_salary": "65"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "63"
  },
  {
    "skills": "asana",
    "avg_salary": "58"
  },
  {
    "skills": "redshift",
    "avg_salary": "58"
  },
  {
    "skills": "kafka",
    "avg_salary": "57"
  },
  {
    "skills": "nosql",
    "avg_salary": "57"
  },
  {
    "skills": "hadoop",
    "avg_salary": "57"
  },
  {
    "skills": "matplotlib",
    "avg_salary": "57"
  },
  {
    "skills": "powershell",
    "avg_salary": "56"
  },
  {
    "skills": "cobol",
    "avg_salary": "55"
  },
  {
    "skills": "db2",
    "avg_salary": "54"
  },
  {
    "skills": "scala",
    "avg_salary": "54"
  },
  {
    "skills": "airflow",
    "avg_salary": "53"
  },
  {
    "skills": "pandas",
    "avg_salary": "52"
  },
  {
    "skills": "postgresql",
    "avg_salary": "51"
  }
]
*/