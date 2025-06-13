-- ============================================================
-- EDA by Demographics
-- ============================================================

-- =============================================================
-- Univariate Analysis: Gender Distribution
-- =============================================================
SELECT DISTINCT 
	gender,
	COUNT(gender) AS gender_count,
	ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stroke_risk),2) AS percent
FROM stroke_risk
GROUP BY gender;

-- =============================================================
-- Remove Row - Gender - 'other'
-- =============================================================
DELETE FROM stroke_risk 
WHERE gender = 'other';

-- =============================================================
-- Bivariate Analysis: Gender - Stroke Distribution
-- =============================================================
SELECT
	gender,
	COUNT(*) AS stroke_count,
	ROUND(COUNT(*) * 100.0/ (
	SELECT COUNT(*) FROM stroke_risk sr2 WHERE sr2.gender = sr.gender),2) AS stroke_rate
FROM stroke_risk sr
WHERE stroke = 1
GROUP BY gender;


-- =============================================================
-- Create and Populate Age Group Column (CDC-aligned)
-- =============================================================

ALTER TABLE stroke_risk 
ADD COLUMN age_group TEXT;

UPDATE stroke_risk 
SET age_group = CASE
    WHEN age < 18 THEN 'children'
    WHEN age BETWEEN 18 AND 44 THEN 'young adults'
    WHEN age BETWEEN 45 AND 64 THEN 'middle-aged'
    WHEN age >= 65 THEN 'older adults'
END;

-- =============================================================
-- Univariate Analysis: Age Group Distribution
-- =============================================================

SELECT 
    age_group,
    COUNT(*) AS age_group_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stroke_risk), 2) AS percent
FROM stroke_risk
GROUP BY age_group
ORDER BY CASE age_group 
	WHEN 'children' THEN 1 
	WHEN 'young adults' THEN 2
	WHEN 'middle-aged' THEN 3
	WHEN 'older adults' THEN 4
END

-- =============================================================
-- Bivariate Analysis: Age Group - Stroke Distribution
-- =============================================================
SELECT 
	age_group, 
	COUNT(*) AS group_count,
	SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) AS stroke_count,
	ROUND( 
		SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2
	) AS stroke_rate_within_group
FROM stroke_risk 
GROUP BY age_group 
ORDER BY CASE age_group 
	WHEN 'children' THEN 1 
	WHEN 'young adults' THEN 2
	WHEN 'middle-aged' THEN 3
	WHEN 'older adults' THEN 4
END;

-- =============================================================
-- Univariate Analysis: Work Type Distribution
-- =============================================================
SELECT 
	work_type,
	COUNT(*) AS work_type_count,
	ROUND( 
		COUNT(*) * 100.0/ (SELECT COUNT(*) FROM stroke_risks),2) AS percent
FROM stroke_risk 
GROUP BY work_type 
ORDER BY percent DESC;

-- =============================================================
-- Bivariate Analysis: Work Type - Stroke Distribution
-- =============================================================

SELECT 
	sr.work_type, 
	COUNT(*) AS stroke_count,
	ROUND( 
		COUNT(*) * 100.0/ (
			SELECT COUNT(*) 
			FROM stroke_risk sr2 
			WHERE sr2.work_type = sr.work_type)	,2) AS stroke_rate
FROM stroke_risk sr
WHERE sr.stroke = 1
GROUP BY sr.work_type 
ORDER BY stroke_rate DESC;

-- =============================================================
-- Univariate Analysis: Residence Type Distribution
-- =============================================================
SELECT DISTINCT 
	residence_type,
	COUNT(residence_type) AS residence_type_count,
	ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stroke_risk),2) AS percent
FROM stroke_risk 
GROUP BY residence_type;

-- =============================================================
-- Bivariate Analysis: Residence Type - Stroke Distribution
-- =============================================================
SELECT 
	sr.residence_type,
	COUNT(*) AS stroke_count,
	ROUND( 
		COUNT(*) * 100.0/ 
		(SELECT COUNT(*) FROM stroke_risk sr2 WHERE sr.residence_type = sr2.residence_type)
	,2) AS stroke_rate
FROM stroke_risk sr 
WHERE sr.stroke = 1 
GROUP BY sr.residence_type;