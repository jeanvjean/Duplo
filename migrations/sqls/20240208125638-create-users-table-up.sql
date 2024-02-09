/* Replace with your SQL commands */
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE business (
    id VARCHAR PRIMARY KEY DEFAULT 'business-' || LOWER(
        REPLACE(
            CAST(uuid_generate_v1mc() As varchar(50))
            , '-','')
        ),
    name varchar(50),
    address varchar(100),
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE departments(
    id VARCHAR PRIMARY KEY DEFAULT 'department-' || LOWER(
        REPLACE(
            CAST(uuid_generate_v1mc() As varchar(50))
            , '-','')
        ),
    name varchar(50),
    business_id VARCHAR(50) REFERENCES business(id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE users(
    id VARCHAR PRIMARY KEY DEFAULT 'user-' || LOWER(
        REPLACE(
            CAST(uuid_generate_v1mc() As varchar(50))
            , '-','')
        ),
    first_name varchar(50),
    last_name varchar(50),
    email varchar(50),
    password varchar(50),
    business_id VARCHAR(50) REFERENCES business(id) ON DELETE CASCADE,
    department_id VARCHAR(50) REFERENCES departments(id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE products(
    id VARCHAR PRIMARY KEY DEFAULT 'products-' || LOWER(
        REPLACE(
            CAST(uuid_generate_v1mc() As varchar(50))
            , '-','')
        ),
    name varchar(50),
    department VARCHAR(50),
    price NUMERIC(19,4),
    department_id VARCHAR(50),
    description VARCHAR(200),
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE orders(
    id VARCHAR PRIMARY KEY DEFAULT 'order-' || LOWER(
        REPLACE(
            CAST(uuid_generate_v1mc() As varchar(50))
            , '-','')
        ),
    delivery_address VARCHAR(100),
    customer_name VARCHAR(50),
    delivery_status VARCHAR(50),
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE order_items(
    id VARCHAR PRIMARY KEY DEFAULT 'order_items-' || LOWER(
    REPLACE(
        CAST(uuid_generate_v1mc() As varchar(50))
        , '-','')
    ),
    order_id VARCHAR(100),
    product_id VARCHAR(50),
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
)

