# SQL Analysis Results — Customer Behavior & Retention

This document summarizes the actual outputs obtained from the SQL queries executed in the expolatory analysis files of this project. It translates query results into business-focused insights and explains what the numbers indicate about customer behavior, retention, and revenue patterns.

All metrics below are derived directly from the PostgreSQL queries executed in the SQL analysis scripts.

---

## Order Status Distribution

Query results show the following order status breakdown:

- Delivered: 96,478 orders
- Shipped: 1,107 orders
- Canceled: 625 orders
- Unavailable: 609 orders
- Invoiced: 314 orders
- Processing: 301 orders
- Created: 5 orders
- Approved: 2 orders

### Interpretation

The vast majority of orders were successfully delivered, indicating strong fulfillment performance and operational reliability. Only a small fraction of orders were canceled or unavailable, suggesting relatively low transaction failure rates.

**Business insight:** Delivery success is high, which supports customer satisfaction and retention potential.

---

## Total Revenue Generated

Total revenue across all analyzed orders:

**15,843,553.24**

### Interpretation

The dataset represents a high-volume transactional environment with multi-million revenue scale. This makes customer retention and repeat purchase strategies financially meaningful.

**Business insight:** Even small improvements in repeat purchase rate could significantly increase total revenue.

---

## Highest Value Orders

Top order values observed:

- Highest single order: 13,664.08
- Other top orders range between ~4,600 and ~7,300

### Interpretation

There are clear high-ticket transactions within the dataset, showing that some customers generate significantly higher revenue per order.

**Business insight:** Identifying and profiling high-value buyers would support targeted retention and VIP segmentation strategies.

---

## Purchase Frequency Results

Query results show that sampled customers each had:

**1 order per customer**

Customer type summary:

- One-time customers: 99,441

Repeat customer percentage:

**0.00% (based on current grouping logic)**

### Interpretation

Based on the current customer_id definition in the dataset, nearly all customers appear as one-time purchasers. This is a known characteristic of this dataset structure where order-level customer IDs are often unique.

**Business insight:** True repeat behavior may require grouping by customer_unique_id instead of customer_id for more accurate retention measurement.

---

## Average Order Value

Average order value calculated:

**160.58**

### Interpretation

Typical transactions are moderate in size, with revenue driven by volume rather than extremely high basket sizes.

**Business insight:** Upselling and cross-selling strategies could increase average order value and improve revenue without needing more customers.

---

## Review Score Summary

Average review score:

**4.09 out of 5**

Review distribution:

- 5-star: 57,328
- 4-star: 19,142
- 3-star: 8,179
- 2-star: 3,151
- 1-star: 11,424

### Interpretation

Customer satisfaction is generally high, with most reviews at 4 or 5 stars. However, there is a noticeable volume of 1-star reviews that may indicate delivery or product issues.

**Business insight:** Satisfaction levels are strong overall, but reducing low-score experiences could meaningfully improve brand perception and retention.

---

## Key Takeaways

From the SQL query outputs:

- Order fulfillment success rate is very high
- Revenue scale is large enough to justify retention optimization
- High-value orders exist and support VIP segmentation
- Average order value is moderate and can be increased through basket strategies
- Review sentiment is positive overall but contains a meaningful low-score segment
- Current repeat rate appears low due to dataset ID structure and may require refined grouping

---

## Note on Methodology

All insights above are based strictly on SQL query outputs generated in the project analysis scripts. No assumptions or external estimates were used  only computed query results.
