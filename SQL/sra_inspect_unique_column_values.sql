-- Check all distinct values of each column combined
-- Applied 2025-06-11 as part of data cleaning phase

SELECT 'gender' AS column_name, gender AS value FROM stroke_risk
UNION
SELECT 'hypertension', CAST(hypertension AS TEXT) FROM stroke_risk
UNION 
SELECT 'heart_disease', CAST(heart_disease AS TEXT) FROM stroke_risk 
UNION 
SELECT 'ever_married', ever_married FROM stroke_risk
UNION 
SELECT 'work_type', work_type FROM stroke_risk
UNION 
SELECT 'Residence_type', Residence_type FROM stroke_risk
UNION 
SELECT 'smoking_status', smoking_status FROM stroke_risk
UNION 
SELECT 'stroke', stroke FROM stroke_risk





