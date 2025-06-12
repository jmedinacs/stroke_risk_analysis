DROP TABLE IF EXISTS stroke_risk;

CREATE TABLE stroke_risk( 
	id INTEGER,
	gender TEXT,
	age REAL,
	hypertension INTEGER,
	heart_disease INTEGER,
	ever_married TEXT,
	work_type TEXT,
	Residence_type TEXT,
	avg_glucose_level REAL,
	bmi REAL,
	smoking_status TEXT,
	stroke INTEGER
)