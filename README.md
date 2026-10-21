# Introduction
I wanted to understand what it actually takes to land a well-paying data analyst job, so I dug into a job postings database using SQL. In this project I look at which roles pay the most, what skills those roles ask for, and which skills are worth learning because they're both in demand and well paid, especially for remote work.

SQL queries? Check them out here: [project_sql folder](/Project_sql/)

# Background
Driven by a quest to navigate the data analyst job market more effectively, this project was born from a desire to pinpoint top-paid and in-demand skills, streamlining others work to find optimal jobs.

Data hails from my [SQL Course](https://lukebarousse.com/sql). It's packed with insights on job titles, salaries, locations, and essential skills.

### The questions I wanted to answer through my SQL queries were:

1. What are the top-paying data analyst jobs?
2. What skills are required for these top-paying jobs?
3. What skills are most in demand for data analysts?
4. Which skills are associated with higher salaries?
5. What are the most optimal skills to learn?

# Tools I Used
For my deep dive into the data analyst job market, I harnessed the power of several key tools:

💡
- **SQL:** The backbone of my analysis, allowing me to query the database and unearth critical insights.
- **PostgreSQL:** The chosen database management system, ideal for handling the job posting data.
- **Visual Studio Code:** My go-to for database management and executing SQL queries.
- **Git & GitHub:** Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and project tracking.

# The Analysis
Each query for this project aimed at investigating specific aspects of the data analyst job market. Here's how I approached each question:

### 1. Top Paying Data Analyst Jobs
To identify the highest-paying roles, I filtered data analyst positions by average hourly salary and location, focusing on remote jobs. This query highlights the high paying opportunities in the field.
  
Here's the breakdown of the top paying hourly data analyst jobs:
- **Wide Hourly Rate Range:** The top 5 paying data analyst roles span from $85/hr to $130/hr, indicating significant earning potential in the field.

![Top Paying Roles](<assets/Code_Generated_Image (1).png>)
*Bar graph visualizing the average hourly rate for the top 5 data analyst jobs by job title and company; Claude generated this graph from my SQL query results*

### 2. Skills for Top Paying Jobs
To understand which skills are linked to the best pay, I looked at the average hourly rate for each skill across the highest-paying remote data analyst jobs. This query shows which skills are associated with the highest earning potential.

![Top Paying Skills](<assets/Code_Generated_Image.png>)

*Bar graph visualizing the average hourly rate for the top 10 skills associated with data analyst roles; Claude generated this graph from my SQL query results*

### 3. In-Demand Skills for Data Analysts
To find out which skills employers ask for most, I counted how many Data Analyst job postings mention each skill and pulled the top 5. The results show which tools are worth learning first if you want the widest range of job opportunities.

| Skills   | Demand Count |
|----------|--------------|
| sql      | 7291         |
| excel    | 4611         |
| python   | 4330         |
| tableau  | 3745         |
| power bi | 2609         |

### 4. Top Paying Skills for Data Analysts
To find out which skills come with the highest pay, I calculated the average hourly rate for each skill across remote Data Analyst job postings and pulled the top 25. The results show which skills are worth learning if you want to boost your earning potential.

| Skills     | Avg Hourly Rate |
|------------|-----------------|
| redis      | $76             |
| gdpr       | $76             |
| c#         | $76             |
| jupyter    | $70             |
| plotly     | $70             |
| dynamodb   | $70             |
| matlab     | $70             |
| gcp        | $68             |
| react      | $68             |
| seaborn    | $66             |
| rshiny     | $65             |
| bitbucket  | $63             |
| asana      | $58             |
| redshift   | $58             |
| kafka      | $57             |
| nosql      | $57             |
| hadoop     | $57             |
| matplotlib | $57             |
| powershell | $56             |
| cobol      | $55             |
| db2        | $54             |
| scala      | $54             |
| airflow    | $53             |
| pandas     | $52             |
| postgresql | $51             |

### 5. Most Optimal Skills to Learn
To find the best skills to learn, I combined demand and pay: how many Data Analyst postings mention each skill, and what the average hourly rate is for those postings. Skills in the top right of the chart are both in demand and well paid.

![Most Optimal Skills](assets\optimal_skills.png)

*Scatter plot visualizing job listings versus average hourly rate for each skill; Claude generated this graph from my SQL query results*

# What I learned
Through this project, I sharpened my SQL skills and learned how to turn raw job posting data into useful answers:

- **🧩 Complex Query Building:** Joined multiple tables (`job_postings_fact`, `skills_job_dim`, and `skills_dim`) and used CTEs with `WITH` to break big queries into clear, manageable steps.
- **📊 Data Aggregation:** Used `GROUP BY` with `COUNT()` and `AVG()` to measure which skills are most in demand and which ones pay the most.
- **🔍 Debugging and Problem Solving:** Tracked down issues like ambiguous column references and mismatched column names, which taught me to qualify columns and double-check my aliases.
- **💡 Analytical Thinking:** Turned broad questions about the data analyst job market into specific queries, then turned the results into insights anyone can read.

# Conclusions

### Insights
From the analysis, a few takeaways stood out:

1. **Top-Paying Data Analyst Jobs:** The highest-paying remote data analyst jobs with hourly rates pay between $85/hr and $130/hr, with the top role (System Data Analyst at Ghritachi) paying $130/hr.
2. **Skills for Top-Paying Jobs:** SQL shows up in the most top-paying postings (3 of the 5), followed by Excel, Power BI, and Flow, so a solid SQL foundation is a common thread in the best-paid roles.
3. **Most In-Demand Skills:** SQL is the clear leader with 7,291 postings, ahead of Excel (4,611), Python (4,330), Tableau (3,745), and Power BI (2,609).
4. **Skills with Higher Pay:** Specialized skills like Redis, GDPR, and C# top the average pay list at $76/hr, followed by Jupyter, Plotly, DynamoDB, and MATLAB at $70/hr. Core tools like Pandas and PostgreSQL sit near the bottom of the top 25.
5. **Optimal Skills to Learn:** SQL pairs the highest demand (303 listings)

### Closing thoughts
This project taught me that the right question matters as much as the right query. I started out just writing SQL, but I learned to ask what I actually wanted to know and then build the query to answer it. Along the way I got comfortable with joins, CTEs, and aggregations, and I learned to debug my own mistakes instead of getting stuck on them. It also changed how I think about my career. Learning the high-demand skills first and adding specialized ones later is a smarter path than chasing a single high salary figure. And since data tools keep changing, the real takeaway is to keep learning and keep practicing on real data.

