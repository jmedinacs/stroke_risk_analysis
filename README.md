# Stroke Risk Analysis

## Business Task

The goal of this project is to **identify the leading predictors of stroke** using historical patient data, so that healthcare leaders can **design targeted awareness campaigns**, **improve preventative health screenings**, and ultimately **reduce the burden of stroke on communities**.

Stroke is a major public health issue that often strikes without warning. However, many of its risk factors—such as hypertension, diabetes, obesity, and smoking—are identifiable through routine screenings and patient history. By analyzing these variables in aggregate, we can uncover which characteristics are most strongly associated with stroke and direct public health efforts toward the highest-impact interventions.

---

## Project Overview & Methodology

This analysis uses the [Stroke Prediction Dataset](https://www.kaggle.com/datasets/fedesoriano/stroke-prediction-dataset) and proceeds through the following phases:

1. **Exploratory Data Analysis (EDA)**  
   Examined stroke prevalence across health and demographic features and visualized distribution patterns.

2. **Chi-Squared Test of Independence**  
   Tested whether each categorical feature has a statistically significant relationship with stroke occurrence.

3. **Bivariate and Multivariate Comparisons**  
   Assessed how combinations of risk factors (e.g., elderly + heart disease) dramatically increase stroke likelihood. 

4. **Recommendations and Public Health Implications**  
   Suggested early education, screening, and predictive modeling strategies based on the findings.

---

## Key Findings

- The top four individual predictors of stroke were:
  - **Elderly (age 80+)** – 21.51% stroke rate
  - **Heart Disease** – 17.03%
  - **Hypertension** – 13.25%
  - **Diabetes (glucose level)** – 10.00%

- Stroke baseline rate in the dataset was 4.87%, meaning these factors increased risk by 2–4x.

- **Compounding risk factors** led to stroke rates up to **40%**:
  - Elderly with **heart disease and diabetes** showed the highest observed stroke rate.

- **Chi-squared tests** confirmed statistical significance for age, heart disease, hypertension, diabetes, marital status, BMI, smoking, and work type.

---

## Recommendations

1. **Initiate Stroke Risk Education Early**  
   Promote healthy habits and awareness in young adulthood before high-risk conditions develop.

2. **Enhance Midlife Screening and Support**  
   Offer routine screenings and preventative counseling starting in middle age for patients with key risk conditions.

3. **Target High-Risk Subgroups**  
   Focus on elderly patients with multiple conditions such as heart disease and diabetes.

4. **Leverage Predictive Modeling**  
   Use machine learning to assess compounding risk and personalize healthcare delivery.

---

## Final Report

- 📎 [View Full Final Report (PDF)](https://github.com/jmedinacs/stroke_risk_analysis/blob/main/docs/Stroke%20Risk%20Analysis%20Final%20Report.pdf)

---

## Project Files

- **📊 Stroke Risk Analysis – Final Dataset & Visualizations**  
  [Google Sheets – Final Analysis Sheet](https://docs.google.com/spreadsheets/d/1ctsUU9V53j5OOZTHkQxE0CU2JSFrc1PsuKVmsW1NAZ8/edit?usp=sharing)

- **🧹 Data Cleaning & Logs**  
  [Google Sheets – Cleaning Log](https://docs.google.com/spreadsheets/d/10xvJDy8NIGSjSsWIwlzbhit-OUnhHeAAujyOldLGtQc/edit?usp=sharing)

---

## Tools Used

- **Google Sheets** – Data cleaning, EDA, charts, and visualizations  
- **R / SQL / Tableau (Planned)** – For future statistical modeling and dashboards

---

## Future Work

- Build predictive models to estimate stroke probability across complex feature interactions.
- Expand dataset scope and explore geographical, genetic, or longitudinal trends.
- Develop dashboards or alerts for EMRs to flag high-risk patients.