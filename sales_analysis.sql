create table customers (
customer_id serial primary key,
full_name varchar(100),
email varchar(100),
signup_date date 
);

insert into customers (full_name,email, signup_date)
values 
('Alice', 'alice@example.com','2024-06-15'),
('Bob Smith', 'bob.smith@example.com', '2024-06-20'),
('Charlie Patel', 'charliep@example.com', '2024-07-01');

create table sales(
sale_id serial primary key,
customer_id int references 
customers (customer_id),
amount decimal(10,2),
sale_date date 
);

insert into sales (customer_id, amount, sale_date) 
values 
(1, 1500.00, '2024-12-10'),
(2, 2300.75, '2024-12-15'),
(1, 450.50, '2025-01-02'),
(3, 799.99, '2025-01-10'),
(4, 1299.00, '2025-02-01'),
(2, 299.99, '2025-02-15');

INSERT INTO customers (full_name, email, signup_date)
VALUES ('John Carter', 'john.carter@example.com', '2024-05-01');

select 
date_trunc('month', sale_date) as month,
SUM(amount) as total_sales
from sales
group by month
order by month;

select customer_id,
SUM(amount) as customer_total
from sales
group by customer_id 
order by customer_total desc;

select sale_date,
SUM(amount) as daily_total
from sales
group by sale_date
order by sale_date;


