# Stroke Risk Analysis

## Business Task

The goal of this project is to **identify the leading predictors of stroke** using historical patient data, so that healthcare leaders can **design targeted awareness campaigns**, **improve preventative health screenings**, and ultimately **reduce the burden of stroke on communities**.

Stroke is a major public health issue that often strikes without warning. However, many of its risk factors—such as hypertension, diabetes, obesity, and smoking—are identifiable through routine screenings and patient history. By analyzing these variables in aggregate, we can uncover which characteristics are most strongly associated with stroke and direct public health efforts toward the highest-impact interventions.


### 🔍 Project Scope & Methodology

This analysis uses the [Stroke Prediction Dataset](https://www.kaggle.com/datasets/fedesoriano/stroke-prediction-dataset) and proceeds through the following phases:

1. **Exploratory Data Analysis (EDA):**  
   - Examine stroke prevalence across demographic and health-related variables.
   - Visualize trends using percentage distributions and bar charts.

2. **Feature Importance & Statistical Testing:**  
   - Identify the top 3–4 potential predictors of stroke based on observed stroke rates.
   - Use the **chi-squared test of independence** to determine whether these features are statistically associated with stroke occurrence.
   - Optionally, test all features and summarize results.

3. **Recommendations:**  
   - Propose health campaigns and targeted screenings for at-risk populations.
   - Suggest public health strategies grounded in the data.

4. **Future Work:**  
   - Explore **compounding effects** of risk factors using multivariate analysis (Three or more features vs Stroke).
   - While this project focuses on the statistical exploration of **each individual feature's effect** on a patient's risk of stroke, a more comprehensive predictive model could offer deeper insights into how **multiple risk factors compound** to increase the likelihood of a stroke.

---

## Key Questions

- What demographic or health-related features are most associated with stroke occurrence?
- How might the presence of multiple top risk factors simultaneously affect stroke likelihood?
- How can data-driven insights guide preventative health measures?

---

## Data Source

- Dataset: [Kaggle - Stroke Prediction Dataset](https://www.kaggle.com/datasets/fedesoriano/stroke-prediction-dataset) by fedesoriano  
- Size: 5,110 records  
- Features include: age, BMI, glucose level, hypertension, heart disease, work type, and more.

## Process Overview

This project follows a structured data analysis pipeline:
1. **Data Cleaning**  
   - Standardized missing values  
   - Categorized continuous variables (age, glucose, BMI) using industry norms  
   - Standardized all categorical values to lowercase with spaces  
2. **Exploratory Data Analysis**  
   - Distribution of stroke vs. non-stroke across demographic and health features  
   - Chi-square tests to assess feature importance for categorical variables  
3. **Insights and Recommendations**  
   - Identification of top 3–4 stroke risk factors  
   - Practical recommendations for public health stakeholders


## Findings

The analysis revealed that the **three most prominent stroke risk factors** are:



## Recommendations

Based on the findings, we propose the following recommendations:



## 📎 Project Files

- **📊 Analysis Spreadsheet (Google Sheets)**  
  [View Live Analysis Sheet (View-Only)](https://docs.google.com/spreadsheets/d/1ctsUU9V53j5OOZTHkQxE0CU2JSFrc1PsuKVmsW1NAZ8/edit?usp=sharing)

- **🧹 Data Cleaning & Logs**  
  [View Cleaning Log & Metadata (View-Only)](https://docs.google.com/spreadsheets/d/10xvJDy8NIGSjSsWIwlzbhit-OUnhHeAAujyOldLGtQc/edit?usp=sharing)


## Tools Used

- **Google Sheets** – Analysis, cleaning, and visualization  
- **SQL / Tableau / R** – Planned for future iterations (including chi-squared testing and visual dashboards)

