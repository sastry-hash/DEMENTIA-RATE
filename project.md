# Project Documentation: Dementia Rates Data Warehouse & Power BI Dashboard

## 1. Project Purpose
The purpose of this project is to design and implement a structured data warehouse that enables the analysis of dementia prevalence across local authorities. The project demonstrates how raw public health and population data can be transformed into analytics-ready models and visualised through a business intelligence dashboard.

---

## 2. Problem Statement
Dementia prevalence data is reported across multiple geographic levels and datasets, making direct analysis at local authority level challenging. This project addresses that problem by integrating population data, dementia indicators, and geographic lookup data into a unified warehouse model that supports consistent, local authority–level analysis.

---

## 3. Data Sources
The project uses three primary datasets:

- **Population Estimates (MYE2):**  
  Provides population counts by age and local authority, used to derive total population and population aged 65 and over.

- **Dementia Indicators (PCDEM):**  
  Contains reported dementia case counts by NHS geographic areas and reporting periods.

- **Geographic Lookup Table:**  
  Maps Lower Layer Super Output Areas (LSOAs) to Sub-ICB, ICB, and local authority codes, enabling accurate joins between datasets.

---

## 4. Architecture Overview
The solution follows a **Medallion (Bronze–Silver–Gold) Architecture** implemented in SQL Server.

- **Bronze Layer:** Raw ingestion of CSV datasets with no transformations  
- **Silver Layer:** Data cleaning, trimming, and data type standardisation  
- **Gold Layer:** Aggregated analytical tables and views designed for reporting  

This layered approach ensures data quality, traceability, and scalability.

---

## 5. Data Modelling and Transformations
Key transformations include:
- Aggregation of population data to calculate total population and population aged 65+
- Aggregation of dementia case counts by Sub-ICB and reporting period
- Integration of population and dementia data using geographic lookup tables
- Calculation of dementia rates per 1,000 elderly population

The final analytical model is designed to support both snapshot and trend-based analysis.

---

## 6. Analytical Outputs
The Gold layer produces analytics-ready tables and views, including:
- Population metrics by local authority
- Dementia counts by Sub-ICB
- A combined local authority–level dementia risk model
- Views supporting latest values and historical trends

---

## 7. Power BI Dashboard
The Power BI dashboard connects directly to the Gold layer tables and views. It presents:
- Dementia prevalence by local authority
- Population aged 65 and over
- Dementia rates per 1,000 elderly population
- Geographic and time-based trends

The dashboard is designed for clarity and decision support.

---

## 8. Tools and Technologies
- SQL Server  
- T-SQL  
- Power BI  
- GitHub  

---

## 9. Limitations and Assumptions
- Analysis is dependent on the accuracy and reporting frequency of source datasets
- Dementia prevalence is analysed using reported counts rather than clinical incidence
- Geographic mappings assume stable boundary definitions during the reporting period

---

## 10. Conclusion
This project demonstrates the practical application of data warehousing principles, SQL-based ETL processes, and dashboard-driven analytics to support public health analysis. It highlights the value of structured data pipelines in transforming complex datasets into actionable insights.
