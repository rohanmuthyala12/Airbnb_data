# Airbnb Data Analysis and Dashboard

## Project Overview

This project involves a comprehensive data analysis and visualization of Airbnb listings using a variety of tools and technologies. The goal was to clean and analyze Airbnb data, store it in AWS, perform key metric calculations, and create interactive dashboards to provide insights.

## Table of Contents

- [Project Overview](#project-overview)
- [Tools and Technologies Used](#tools-and-technologies-used)
- [Data Overview](#data-overview)
- [Project Workflow](#project-workflow)
  - [1. Data Cleaning and Preprocessing](#1-data-cleaning-and-preprocessing)
  - [2. Data Storage in AWS](#2-data-storage-in-aws)
  - [3. Data Analysis using SQL](#3-data-analysis-using-sql)
  - [4. Key Metrics Calculation](#4-key-metrics-calculation)
  - [5. Data Visualization using Tableau](#5-data-visualization-using-tableau)
- [Files in the Repository](#files-in-the-repository)
- [How to Run the Project](#how-to-run-the-project)
- [Conclusion](#conclusion)

## Tools and Technologies Used

- **Python:** For data cleaning and preprocessing.
- **Jupyter Notebook:** For interactive data analysis.
- **SQL (Amazon Redshift):** For performing key metrics calculations.
- **AWS S3:** For storing the cleaned data.
- **AWS Glue:** For creating tables and crawling data stored in S3.
- **Amazon Redshift:** For performing SQL queries and analytics.
- **Tableau:** For creating interactive dashboards.

## Data Overview

The data used in this project consists of Airbnb listings. The data includes various features such as:
- Room types
- Neighborhood groups
- Availability (days)
- Pricing information
- Review counts and ratings

## Project Workflow

### 1. Data Cleaning and Preprocessing

The raw Airbnb data was cleaned and preprocessed using Python in a Jupyter Notebook. This involved handling missing values, correcting data types, and filtering irrelevant data.

**File:** `Airbnb_cleaning_final.ipynb`

### 2. Data Storage in AWS

The cleaned data was stored in an AWS S3 bucket. AWS Glue was used to create a table and crawl the data in S3, making it accessible for further analysis.

### 3. Data Analysis using SQL

Using Amazon Redshift, SQL queries were executed to perform key metric calculations, such as total revenue, average price, occupancy rate, etc. The SQL script also includes joins and aggregations to derive insights from the data.

**Files:**
- `airbnb_query.sql`
- `SQL_keymetrics.ipynb`

### 4. Key Metrics Calculation

Key metrics were calculated using SQL in Amazon Redshift. These metrics include:
- Total Revenue
- Average Price per Night
- Occupancy Rate
- Review Counts and Average Ratings

**File:** `SQL_keymetrics.ipynb`

### 5. Data Visualization using Tableau

Interactive dashboards were created in Tableau to visualize the key metrics and provide insights into Airbnb listings across different neighborhood groups.

**File:** `airbnb_Dashboard.twb`

## Files in the Repository

- **`Airbnb_cleaning_final.ipynb`:** Jupyter Notebook for data cleaning and preprocessing.
- **`airbnb.csv`:** Raw Airbnb dataset.
- **`cleaned_airbnb_data.csv`:** Cleaned Airbnb dataset after preprocessing.
- **`airbnb_query.sql`:** SQL script for key metrics calculations.
- **`SQL_keymetrics.ipynb`:** Jupyter Notebook for performing SQL queries and analysis in Amazon Redshift.
- **`airbnb_Dashboard.twb`:** Tableau workbook containing the interactive dashboards.

## How to Run the Project

1. **Data Cleaning and Preprocessing:**
   - Open `Airbnb_cleaning_final.ipynb` in Jupyter Notebook.
   - Execute the cells to clean and preprocess the raw Airbnb data.
   - The cleaned data will be saved as `cleaned_airbnb_data.csv`.

2. **Data Storage in AWS:**
   - Upload `cleaned_airbnb_data.csv` to an AWS S3 bucket.
   - Use AWS Glue to create a table and crawl the data in S3.

3. **Data Analysis using SQL:**
   - Upload the data to Amazon Redshift.
   - Run the SQL queries provided in `airbnb_query.sql` to calculate key metrics.

4. **Visualization in Tableau:**
   - Open `airbnb_Dashboard.twb` in Tableau.
   - Connect to the data stored in Redshift or load the cleaned data.
   - Explore the interactive dashboards to gain insights.

## Conclusion

This project demonstrates a complete workflow for analyzing and visualizing Airbnb data using modern data tools and platforms. The dashboards created provide valuable insights that can be used for strategic decision-making in a business environment.

Feel free to explore the files and replicate the process for your own data analysis projects!