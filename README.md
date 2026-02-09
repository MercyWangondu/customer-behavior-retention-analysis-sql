# Customer Behavior & Retention Analysis (SQL + Power BI)

## Project Overview

This project analyzes customer purchasing behavior, retention patterns, and revenue drivers using SQL and Power BI. The goal was to simulate how a data analyst would investigate customer activity, identify repeat purchase behavior, evaluate customer value, and translate raw transactional data into actionable business insights.

The project follows a full analytics workflow:
- Raw data ingestion
- Relational database modeling
- Exploratory and retention-focused SQL analysis
- Interactive dashboard creation in Power BI
- Business interpretation of results

This repository demonstrates practical SQL skills, analytical thinking, and the ability to communicate insights clearly to non-technical stakeholders.

## Business Objectives

The analysis was designed to answer key business questions:

- How are customers purchasing over time?
- What does overall revenue and order value look like?
- How frequently do customers place repeat orders?
- What is the distribution of customer satisfaction?
- Are there indicators of retention or churn risk?
- How do order status, delivery, and reviews relate to revenue?

## Dataset Used

**Dataset:** Brazilian E-Commerce Public Dataset by Olist  
**Source:** Kaggle (public dataset)

### Why this dataset?

- Real-world e-commerce transactional data
- Multiple related tables suitable for relational modeling
- Rich enough for customer behavior and retention analysis
- Commonly used in professional analytics portfolios

Only the tables relevant to customer behavior analysis were used.

## Tables Used

- `customers` — customer identifiers and location data  
- `orders` — order lifecycle, status, and timestamps  
- `order_items` — product pricing and freight values  
- `order_payments` — payment methods and installment data  
- `order_reviews` — customer satisfaction scores  

All tables were loaded into PostgreSQL and linked using foreign key relationships.

## Technical Workflow

### Data Preparation

- Downloaded raw CSV files from Kaggle
- Created PostgreSQL database
- Designed relational table schemas
- Imported CSV data
- Resolved schema mismatches
- Added primary and foreign key constraints

### Database Modeling

Relationships created:
- Customers → Orders
- Orders → Order Items
- Orders → Payments
- Orders → Reviews

This ensured referential integrity and enabled multi-table analysis.

## SQL Analysis Performed

Key analyses included:
- Order status distribution
- Revenue aggregation
- Average order value
- Customer purchase frequency
- Identification of one-time vs repeat customers
- Monthly order trends
- Review score distribution
- High-value order detection

Advanced SQL features used:
- Multi-table JOINs
- Aggregations and grouping
- CTEs
- Window functions
- Time-based analysis

## Power BI Dashboard

An interactive dashboard was built to visualize findings and support business decision-making.

### Key Metrics Displayed

- **Total Revenue:** 15.84M  
- **Total Orders:** 99.43K  
- **Average Order Value:** 159.34  
- **Total Customers:** ~99K  
- **Average Review Score:** 4.09  

### Visuals Included

- Orders by Status
- Monthly Order Trend
- Revenue and Freight Breakdown by Order
- Review Score Distribution
- One-Time vs Repeat Customers
- Interactive slicers for order status and date range

## Key Insights

### Order Fulfillment

Over 96% of orders were delivered, indicating strong fulfillment performance. Cancellations and unavailable orders represent a very small fraction of total orders.

### Revenue & Order Value

Total revenue exceeded 15.8M, showing meaningful business scale. A small number of high-value orders contribute disproportionately to revenue.

### Customer Behavior

Most customers are one-time buyers, indicating low repeat purchase behavior. This suggests a strong acquisition funnel but weak retention strategy.

### Customer Satisfaction

Average review score of 4.09 indicates generally positive customer experiences. The majority of reviews are 4 and 5 stars, though lower ratings still exist and should be monitored.

### Trend Analysis

Monthly order trends show a gradual decline, signaling potential churn or market saturation. Without intervention, long-term revenue growth may be at risk.

## Business Recommendations

### 1. Improve Customer Retention

Introduce loyalty programs or repeat purchase incentives. Use targeted email or discount campaigns after first purchase.

### 2. Focus on High-Value Customers

Identify customers associated with high-value orders. Offer premium services or personalized promotions.

### 3. Leverage Reviews

Investigate drivers behind low review scores. Use feedback to improve delivery experience and customer satisfaction.

### 4. Monitor Order Trends

Address declining order trends with seasonal campaigns or promotions. Analyze churn cohorts for early intervention.

## Repository Structure

```
customer-behavior-retention-analysis-sql/
│
├── data/
│   └── raw/                → Original CSV datasets
│
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_load_data.sql
│   ├── 03_foreign_keys_and_relationships.sql
│   ├── 04_exploratory_queries.sql
│   └── 05_retention_analysis.sql
│
├── insights/
│   ├── customer_behavior_insights.md
│   └── power_bi_measures_and_columns.md
│
└── README.md
```

## Tools & Technologies

- PostgreSQL
- SQL
- Power BI
- GitHub
- CSV data processing
- Relational database modeling

## What This Project Demonstrates

- Working with real-world messy data
- Designing relational databases
- Writing advanced SQL queries
- Performing customer behavior analysis
- Translating data into business insights
- Building professional dashboards
- Clear documentation and storytelling

## Future Enhancements

- Predictive churn modeling
- Python-based analysis layer
- Customer segmentation models
- Automated reporting pipelines

## Contact

Feel free to reach out with questions or feedback about this project.

---

**Note:** This project was created for portfolio purposes to demonstrate analytical and technical skills in SQL, database design, and business intelligence.
