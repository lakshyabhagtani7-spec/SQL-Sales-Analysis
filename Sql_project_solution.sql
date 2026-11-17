create database project1;
use project1;
select * from customers;
select * from menu;
select * from orders;
select * from restaurants; 

# customers - (cid, cname, age, gender')
# restaurants - (res_id, res_name, city, location)
# menu - (menu_id, res_id, item_name, veg/non-veg, res_price, app_price)
# orders - (order_id, menu_id, cust_id, qty, order_date, order_time, eta, delivery_time)

# Basic Questions
# Q1) Find Res with more than 50 orders
select r.res_id, r.res_name, count(distinct o.order_id ) as total_orders
from restaurants r
join menu m on r.res_id = m.res_id
join orders o on o.menu_id = m.menu_id
group by r.res_id, r.res_name
having count(distinct o.order_id ) >50 ;

# Q2) Find the top 5 customers by total quantity ordered.
select sum(o.qty) as total_qty,c.cid,c.cname from orders o 
join customers c on c.cid = o.cust_id
group by c.cid,c.cname
order by total_qty desc limit 5;

# Q3) Find each customer's first order date and last order date
# only for those customers who have placed multiple orders
select c.cid,c.cname,min(o.order_date) as first_order_date , max(o.order_date) as last_order_date , count( distinct o.order_id) as total_orders
from customers c
join orders o on o.cust_id = c.cid
group by c.cid,c.cname
having  count( distinct o.order_id) > 1;

# Q4) Find customers who ordered from more than 3 distinct restaurants.
 select c.cid,c.cname, count(distinct r.res_id) as count_res_id
 from customers c 
 join orders o on o.cust_id = c.cid
 join  menu m  on m.menu_id = o.menu_id
 join restaurants r on r.res_id = m.res_id
 group by c.cid,c.cname
 having  count(distinct r.res_id) > 3;
 
 # Q5) Find month wise total revenue
select  date_format(o.order_date, '%Y-%m') as order_month, sum(m.app_price) as revenue
from orders o 
join menu m on m.menu_id = o.menu_id
group by date_format(o.order_date, '%Y-%m')
order by order_month;

# Q6) Find each restaurant's average delivery delay 
# Display res_id,order_time, delivery_time, diff, eta

SELECT
    r.res_id,
    o.order_time,
    o.delivery_time,
    TIMESTAMPDIFF(MINUTE, o.eta, o.delivery_time) AS diff,
    o.eta,
    AVG(TIMESTAMPDIFF(MINUTE, o.eta, o.delivery_time))
        OVER (PARTITION BY r.res_id) AS avg_delivery_delay
FROM restaurants r
JOIN menu m
    ON r.res_id = m.res_id
JOIN orders o
    ON m.menu_id = o.menu_id;

describe orders;

# Q7) Find menu items where app price is higher than restaurant price
# Display item_name, res_price, app_price
select item_name, res_price,app_price
from menu 
where app_price > res_price;

# Questions on 
# Subqueries, Window Functions, Self-join, Joins
# customers - (cid, cname, age, gender')
# restaurants - (res_id, res_name, city, location)
# menu - (menu_id, res_id, item_name, veg/non-veg, res_price, app_price)
# orders - (order_id, menu_id, cust_id, qty, order_date, order_time, eta, delivery_time)
# Q1) Find most expensive menu item in each restaurant ?

# Q2) Find customers whose total orders exceed the average orders 
# placed by all customers.

# Q3) Rank customers based on total spending. 
# Display cust_id,total_spend and rank. Display top 15 Ranks

# Q4) Find the top 3 highest priced item in the menu for each city

# Q5) Find running revenue by order month for 2024

# Q6) Find menu items never ordered.

# Q7) Find top 4 ordered item per restaurant
# Display res_name, item_name, total_qty, rank

# Q8) Find customers whose spending is above their own gender 
# average spending. Display cust_id, gender, spend, avg_spend by gender

# Q9) Find the latest order placed by each customer.
# Display all columns from orders

# Q10) Find customers with consecutive-day orders.