-- Standardize text columns to lowercase and trimmed format
-- Applied 2025-06-11 as part of data cleaning phase


UPDATE stroke_risk 
SET gender = LOWER(TRIM(gender));

UPDATE stroke_risk
SET ever_married = LOWER(TRIM(ever_married));

UPDATE stroke_risk
SET work_type = LOWER(TRIM(work_type));

UPDATE stroke_risk
SET Residence_type = LOWER(TRIM(Residence_type));

UPDATE stroke_risk
SET smoking_status = LOWER(TRIM(smoking_status));

-- Standardize Residence_type column name
ALTER TABLE stroke_risk  
RENAME COLUMN Residence_type TO residence_type;