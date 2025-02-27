SELECT  
    skills,
    ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM
    job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL AND
    job_work_from_home = TRUE
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25;

/*  💲 Big Data & Cloud Skills Lead Salaries: Expertise in tools like PySpark ($208K), Databricks ($141K), and GCP ($122K) commands top pay, reflecting high demand for big data processing and cloud-based analytics.

🧠 Machine Learning & Python Libraries Pay Well: Core data science tools like Pandas ($151K), NumPy ($143K), and Scikit-learn ($125K) offer strong salaries, with specialized ML platforms like DataRobot ($155K) and Watson ($160K) boosting earning potential.

⚙️ DevOps & Cross-Functional Skills Increase Value: Knowledge of GitLab ($154K), Bitbucket ($189K), and programming languages like Swift ($153K) and Golang ($145K) shows that combining analytics with DevOps and development skills enhances marketability.
/*