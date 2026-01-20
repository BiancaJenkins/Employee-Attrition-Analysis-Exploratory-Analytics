# Employee-Attrition-Analysis-Exploratory-Analytics

Overview

This project explores the drivers of employee attrition and builds an interpretable predictive model to estimate attrition risk at an employee review point in time. The focus is on data modeling, exploratory analysis, and explainable machine learning, rather than predictive complexity.

Business Objective

Employee attrition is costly and disruptive, yet organizations often lack clarity on which aspects of the employee experience most strongly influence turnover.
The objective of this project is to:

* Identify key drivers of attrition

* Estimate attrition probability using an interpretable model

* Translate model outputs into actionable insights for stakeholders

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

* Built a final modeling dataset with a clearly defined attrition target

* Validated one-row-per-employee integrity and class balance

Exploratory Analysis

Exploratory analysis examined relationships between employee experience factors and attrition outcomes:

* Lower tenure and lower engagement were consistently associated with higher attrition risk

* Attrition rates varied by job role, suggesting role-specific risk

* Manager support and growth opportunity showed directional but weaker relationships with attrition

* Training volume and performance rating showed minimal relationship to attrition outcomes

Predictive Modeling

* Built an interpretable logistic regression model

* Standardized numeric features to support coefficient comparison

* Applied one-hot encoding to job role with a reference category

* Prioritized explainability and business insight over model complexity

Model Outputs

* Employee-level attrition probability

* Risk band classification (Low / Medium / High)

* Feature importance using logistic regression coefficients and odds ratios

Model outputs were exported and used to build a Power BI decision-support dashboard.

Visualization & Reporting

Power BI was used to operationalize model outputs for non-technical stakeholders:

* Distribution of predicted attrition risk

* Average predicted risk by job role

* Top drivers influencing attrition risk

Note: Modeling and evaluation were performed in Python. Power BI was used exclusively for reporting.
