# Employee-Attrition-Analysis-Exploratory-Analytics

Overview

This project explores the drivers of employee attrition using structured data modeling and exploratory analysis. The focus is on identifying employee experience factors associated with attrition and translating those insights into clear, stakeholder-ready outputs.

Business Objective

Employee attrition is costly and disruptive, yet organizations often lack clarity on which aspects of the employee experience most strongly influence turnover.
The objective of this project is to:

* Identify key drivers of attrition

* Quantify relative attrition risk indicators using an interpretable analytical approachition 

* Translate analytical findings into actionable insights for business stakeholders
  
Data Summary

* Snapshot HR dataset (one row per employee)

* Mix of numeric and categorical features

* Includes employee attributes, engagement scores, training activity, and attrition outcome

* Data modeled to prevent leakage and support clean analysis

Data Modeling & ETL

* Started from a denormalized source table

* Designed a clean analytical data model separating:

  * Employee attributes

  * Experience measures

  * Training summaries

* Built a final analytical dataset with a clearly defined attrition outcome

* Validated one-row-per-employee integrity and class balance

Exploratory Analysis

Exploratory analysis examined relationships between employee experience factors and attrition outcomes:

* Lower tenure and lower engagement were consistently associated with higher attrition risk

* Attrition rates varied by job role, suggesting role-specific risk

* Manager support and growth opportunity showed directional but weaker relationships with attrition

* Training volume and performance rating showed minimal relationship to attrition outcomes

Analytical Modeling

* Built an interpretable logistic regression model

* Standardized numeric features to support coefficient comparison

* Applied one-hot encoding to job role with a reference category

* Prioritized explainability and business insight over model complexity

Model Outputs

* Employee-level attrition risk indicators

* Risk band classification (Low / Medium / High)

* Feature importance using logistic regression coefficients and odds ratios

Analytical outputs were exported and used to build a Power BI decision-support dashboard.

Visualization & Reporting

Power BI was used to operationalize model outputs for non-technical stakeholders:

* Distribution of attrition risk indicators

* Average predicted risk by job role

* Key factors most strongly associated with attrition

Note: Python was used for data preparation and analytical modeling. Power BI was used exclusively for reporting.
