-- Applied 2025-06-11 as part of data cleaning phase
-- ========================================
-- Step 1: Convert common fake-missing values to actual NULLs
-- ========================================
-- This handles both TEXT and numeric-looking columns

-- List of columns that might contain 'n/a', '', etc.
-- Each UPDATE standardizes these as NULLs for consistency

-- Clean numeric column (REAL)
UPDATE stroke_risk
SET bmi = NULL 
WHERE TRIM(LOWER(bmi)) IN ('', 'n/a', 'na', 'null');

UPDATE stroke_risk
SET avg_glucose_level = NULL
WHERE TRIM(LOWER(avg_glucose_level)) IN ('', 'n/a', 'na', 'null');

UPDATE stroke_risk
SET id = NULL
WHERE TRIM(LOWER(id)) IN ('', 'n/a', 'na', 'null');

UPDATE stroke_risk
SET hypertension = NULL
WHERE TRIM(LOWER(hypertension)) IN ('', 'n/a', 'na', 'null');

UPDATE stroke_risk
SET heart_disease = NULL
WHERE TRIM(LOWER(heart_disease)) IN ('', 'n/a', 'na', 'null');

UPDATE stroke_risk
SET age = NULL
WHERE TRIM(LOWER(age)) IN ('', 'n/a', 'na', 'null');

-- Clean TEXT columns
UPDATE stroke_risk
SET gender = NULL
WHERE TRIM(LOWER(gender)) IN ('', 'n/a', 'na', 'null');

UPDATE stroke_risk
SET ever_married = NULL
WHERE TRIM(LOWER(ever_married)) IN ('', 'n/a', 'na', 'null');

UPDATE stroke_risk
SET work_type = NULL
WHERE TRIM(LOWER(work_type)) IN ('', 'n/a', 'na', 'null');

UPDATE stroke_risk
SET Residence_type = NULL
WHERE TRIM(LOWER(Residence_type)) IN ('', 'n/a', 'na', 'null');

UPDATE stroke_risk
SET smoking_status = NULL
WHERE TRIM(LOWER(smoking_status)) IN ('', 'n/a', 'na', 'null');



-- ========================================
-- Step 2: Summary of NULLs by column
-- ========================================
SELECT 
	COUNT(*) AS total_rows,

	-- Key columns
	SUM(CASE WHEN id IS NULL THEN 1 ELSE 0 END) AS null_id,
	SUM(CASE WHEN stroke IS NULL THEN 1 ELSE 0 END) AS null_stroke,

	-- Demographics
	SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS null_gender,
	SUM(CASE WHEN age IS NULL THEN 1 ELSE 0 END) AS null_age,
	SUM(CASE WHEN ever_married IS NULL THEN 1 ELSE 0 END) AS null_ever_married,
	SUM(CASE WHEN Residence_type IS NULL THEN 1 ELSE 0 END) AS null_residence_type,

	-- Health
	SUM(CASE WHEN hypertension IS NULL THEN 1 ELSE 0 END) AS null_hypertension,
	SUM(CASE WHEN heart_disease IS NULL THEN 1 ELSE 0 END) AS null_heart_disease,
	SUM(CASE WHEN bmi IS NULL THEN 1 ELSE 0 END) AS null_bmi,
	SUM(CASE WHEN avg_glucose_level IS NULL THEN 1 ELSE 0 END) AS null_avg_glucose_level,

	-- Lifestyle
	SUM(CASE WHEN work_type IS NULL THEN 1 ELSE 0 END) AS null_work_type,
	SUM(CASE WHEN smoking_status IS NULL THEN 1 ELSE 0 END) AS null_smoking_status

FROM stroke_risk sr;
