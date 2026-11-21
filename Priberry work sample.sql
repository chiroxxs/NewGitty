CREATE TABLE work_sample (
    application_id      VARCHAR,
    applied_on          DATE,
    role_category       TEXT,
    work_mode           TEXT,
    stipend_inr_month   NUMERIC,
    source              TEXT,
    steps_done          NUMERIC,
    shortlisted         text,
    interviewed         text,
    hired               text,
    days_to_first_reply NUMERIC
);

SELECT * FROM work_sample

-- Q1a. Hires per 100 applications, by source

SELECT source,
       count(*) AS applications,
       count(*) FILTER (WHERE hired = 'yes') AS hires,
       round(100.0 * count(*) FILTER (WHERE hired = 'yes') / count(*), 1) AS hires_per_100
FROM work_sample
GROUP BY source
ORDER BY hires_per_100 DESC;

-- Q1b. Same, split by role category (cells are small: 0-7 hires each)

SELECT role_category, source,
       count(*) AS applications,
       count(*) FILTER (WHERE hired = 'yes') AS hires,
       round(100.0 * count(*) FILTER (WHERE hired = 'yes') / count(*), 1) AS hires_per_100
FROM work_sample
GROUP BY role_category, source
ORDER BY role_category, hires_per_100 DESC;

-- Q2. Shortlist rate: all 4 steps vs fewer

SELECT CASE WHEN steps_done = 4 THEN 'all 4 steps' ELSE 'fewer than 4 steps' END AS group_,
       count(*) AS applications,
       count(*) FILTER (WHERE shortlisted = 'yes') AS shortlisted,
       round(100.0 * count(*) FILTER (WHERE shortlisted = 'yes') / count(*), 1) AS shortlist_rate_pct
FROM work_done
GROUP BY 1
ORDER BY 1;

-- Q2 detail: by number of steps done

SELECT steps_done, count(*) AS applications,
       round(100.0 * count(*) FILTER (WHERE shortlisted = 'yes') / count(*), 1) AS shortlist_rate_pct
FROM work_sample
GROUP BY steps_done
ORDER BY steps_done;

-- Q3. First-reply speed and share who never hear back, paid vs unpaid

SELECT CASE WHEN stipend_inr_month > 0 THEN 'paid' ELSE 'unpaid (stipend 0)' END AS group_,
       count(*) AS applications,
       count(days_to_first_reply) AS heard_back,
       round(100.0 * count(*) FILTER (WHERE days_to_first_reply IS NULL) / count(*), 1) AS never_heard_back_pct,
       percentile_cont(0.5) WITHIN GROUP (ORDER BY days_to_first_reply) AS median_days,
       round(avg(days_to_first_reply), 1) AS mean_days,
       percentile_cont(0.9) WITHIN GROUP (ORDER BY days_to_first_reply) AS p90_days
FROM work_sample
GROUP BY 1
ORDER BY 1 DESC;



