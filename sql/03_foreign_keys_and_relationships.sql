## Database Relationships & Data Modeling

To support accurate customer behavior and retention analysis, relational links were created between all core transactional tables after data ingestion into PostgreSQL. These relationships ensure data consistency and enable reliable analysis across customers, orders, payments, items, and reviews.

---

### Customers → Orders

Each order is linked to a customer, enabling customer-level insights such as repeat purchases, retention trends, and lifetime behavior analysis.

```sql
ALTER TABLE orders
ADD CONSTRAINT fk_orders_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);
```

---

### Orders → Order Items

Order items are linked to orders, allowing analysis of revenue, basket size, and purchasing patterns at both order and customer levels.

```sql
ALTER TABLE order_items
ADD CONSTRAINT fk_order_items_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);
```

---

### Orders → Payments

Payment records are linked to orders, enabling analysis of payment methods, installment behavior, and revenue distribution.

```sql
ALTER TABLE order_payments
ADD CONSTRAINT fk_order_payments_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);
```

---

### Orders → Reviews

Customer reviews are linked to orders, making it possible to analyze satisfaction in relation to order status, delivery performance, and purchase behavior.

```sql
ALTER TABLE order_reviews
ADD CONSTRAINT fk_order_reviews_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);
```

---

### Data Integrity & Validation

After creating the relationships, PostgreSQL system catalogs were queried to confirm that all foreign key constraints were successfully applied.

```sql
SELECT
    tc.table_name,
    kcu.column_name,
    ccu.table_name AS referenced_table
FROM information_schema.table_constraints tc
JOIN information_schema.key_column_usage kcu
    ON tc.constraint_name = kcu.constraint_name
JOIN information_schema.constraint_column_usage ccu
    ON ccu.constraint_name = tc.constraint_name
WHERE constraint_type = 'FOREIGN KEY';
```

Expected Result: The query returns four foreign key relationships, confirming that all tables are properly connected.
