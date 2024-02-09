/* Replace with your SQL commands */

INSERT INTO business(
    id,
    name,
    address
)
VALUES
('business-1df1545cf25a11eca8062f6ad03ab586', 'Active Business 1', 'No.47 enterprice lane sarasota FL'),
('business-2df1545cf25a11eca8062f6ad03ab586', 'Active Business 2', 'No.48 enterprice lane sarasota FL');


INSERT INTO departments(
    id,
    name,
    business_id
)
VALUES
('department-1df1545cf25a11eca8062f6ad03ab586', 'Condiments', 'business-1df1545cf25a11eca8062f6ad03ab586'),
('department-2df1545cf25a11eca8062f6ad03ab586', 'Automobile', 'business-1df1545cf25a11eca8062f6ad03ab586'),
('department-2df4545cf25a11eca8062f6ad03ab586', 'Kitchen Utensils', 'business-2df1545cf25a11eca8062f6ad03ab586'),
('department-3df1545cf25a11eca8062f6ad03ab586', 'House hold', 'business-2df1545cf25a11eca8062f6ad03ab586'),
('department-4df1545cf25a11eca8062f6ad03ab586', 'Fashion', 'business-2df1545cf25a11eca8062f6ad03ab586');

INSERT INTO products(
    id,
    name,
    price,
    department_id,
    description
)VALUES
('product-1df1545cf25a11eca8062f6ad03ab586', 'Product 1 <Condeiment>', 300, 'department-1df1545cf25a11eca8062f6ad03ab586', 'Describing the condiment product with a simple identification'),
('product-2df1545cf25a11eca8062f6ad03ab586', 'Product 2 <Condeiment>', 400, 'department-1df1545cf25a11eca8062f6ad03ab586', 'Describing the condiment 2 product with a simple identification'),
('product-3df1545cf25a11eca8062f6ad13ab586', 'Product 3 <Condeiment>', 500, 'department-1df1545cf25a11eca8062f6ad03ab586', 'Describing the condiment 3 product with a simple identification'),

('product-4df1545cf25a11ecj8062f6ad03ab586', 'Product 1 <Fashion>', 300, 'department-4df1545cf25a11eca8062f6ad03ab586', 'Describing the fasion product with a simple identification'),
('product-5df1545cf25a11eca8062f6ad03ab586', 'Product 2 <Fashion>', 400, 'department-4df1545cf25a11eca8062f6ad03ab586', 'Describing the fasion 2 product with a simple identification'),
('product-6df1545cf25a11eca8062f6ad03ab586', 'Product 3 <Fashion>', 500, 'department-4df1545cf25a11eca8062f6ad03ab586', 'Describing the fasion 3 product with a simple identification'),

('product-7df1545cf25a11eca8062f6ad03ab586', 'Product 1 <House hold>', 300, 'department-3df1545cf25a11eca8062f6ad03ab586', 'Describing the House hold product with a simple identification'),
('product-8df1545cf25a11eca8062f6ad03ab586', 'Product 2 <House hold>', 400, 'department-3df1545cf25a11eca8062f6ad03ab586', 'Describing the House hold 2 product with a simple identification'),
('product-9df1545cf25a11eca8062f6ad03ab586', 'Product 3 <House hold>', 500, 'department-3df1545cf25a11eca8062f6ad03ab586', 'Describing the House hold 3 product with a simple identification'),

('product-0df1545cf25a11eca8062f6ad03ab586', 'Product 1 <Automobile>', 300, 'department-3df1545cf25a11eca8062f6ad03ab586', 'Describing the Automobile product with a simple identification'),
('product-01f1545cf25a11eca8062f6ad03ab586', 'Product 2 <Automobile>', 400, 'department-3df1545cf25a11eca8062f6ad03ab586', 'Describing the Automobile 2 product with a simple identification'),
('product-02f1545cf25a11eca8062f6ad03ab586', 'Product 3 <Automobile>', 500, 'department-3df1545cf25a11eca8062f6ad03ab586', 'Describing the Automobile 3 product with a simple identification');


INSERT INTO orders(
    id,
    delivery_address,
    customer_name,
    delivery_status
)
VALUES
('order-1df1545cf25a11eca8062f6ad03ab586', 'home of the customer 1', 'Daniel Steel', 'pending'),
('order-2df1545cf25a11eca8062f6ad03ab586', 'home of the customer 2', 'Jonny Depp', 'pending');

INSERT INTO order_items(
    id,
    order_id,
    product_id
)
VALUES
('order_ityem-1df1545cf25a11eca8062f6ad03ab58', 'order-1df1545cf25a11eca8062f6ad03ab586', 'product-1df1545cf25a11eca8062f6ad03ab586'),
('order_ityem-2df1545cf25a11eca8062f6ad03ab58', 'order-1df1545cf25a11eca8062f6ad03ab586', 'product-2df1545cf25a11eca8062f6ad03ab586'),
('order_ityem-3df1545cf25a11eca8062f6ad03ab58', 'order-1df1545cf25a11eca8062f6ad03ab586', 'product-3df1545cf25a11eca8062f6ad13ab586'),

('order_ityem-4df1545cf25a11eca8062f6ad03ab58', 'order-2df1545cf25a11eca8062f6ad03ab586', 'product-7df1545cf25a11eca8062f6ad03ab586'),
('order_ityem-5df1545cf25a11eca8062f6ad03ab58', 'order-2df1545cf25a11eca8062f6ad03ab586', 'product-8df1545cf25a11eca8062f6ad03ab586'),
('order_ityem-6df1545cf25a11eca8062f6ad03ab58', 'order-2df1545cf25a11eca8062f6ad03ab586', 'product-9df1545cf25a11eca8062f6ad03ab586');