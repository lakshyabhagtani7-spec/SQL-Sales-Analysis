

# Given 4 csv files with the following schema

# customers - (cid, cname, age, gender'
# restaurants - (res_id, res_name, city, location)
# menu - (menu_id, res_id, item_name, veg/non-veg, res_price, app_price)
# orders - (order_id, menu_id, cust_id, qty, order_date, order_time, eta, delivery_time)

# Load these csv files in any database using Table Data Import wizard
# and solve these questions below


# Basic Questions

# Q1) Find Res with more than 50 orders
# Q2) Find the top 5 customers by total quantity ordered.
# Q3) Find each customer's first order date and last order date
# only for those customers who have placed multiple orders
# Q4) Find customers who ordered from more than 3 distinct restaurants.
# Q5) Find month wise total revenue
# Q6) Find each restaurant's average delivery delay 
# Display res_id,order_time, delivery_time, diff, eta
# Q7) Find menu items where app price is higher than restaurant price
# Display item_name, res_price, app_price
# Q8) 


# Questions on 
# Subqueries, Window Functions, Self-join, Joins


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

# Q11) Find percentage contribution of each restaurant to total revenue.

# Q12) Find the bottom 3 least ordered items overall(least ordered in terms of qty)

# Q13) Find restaurants whose revenue is above average restaurant revenue.
# Dispaly res_id and revenue

# Q14) Find each customer's preferred restaurant (most ordered from).

# Q15) Find customers whose spending is above the average spending 
# of customers from the same age group (18–25, 26–35, 36–45).
# Display cid, age_group, spend, avg_group_spend

# Q16) Find the top 2 restaurants by revenue in each city.
# Dispaly city, restaurant_name, revenue,rank

# Q17) Find customers whose latest order value is greater than their average historical order value.
# Display cust_id, order_id, oerder_value, avg_order_value, rank

# Q18) Find restaurants whose most expensive item is above the overall average max item price.
# Display res_id, max_price

# Q19) Find menu items whose revenue is above the average revenue of items in the same restaurant.
# # Display res_id, item_name, revenue, avg_res_item_rev

# Q20) Find customers who have ordered every restaurant available in their city.
# Display cid

# Q21) Find revenue growth/decline for each restaurant compared to previous order date.
# # Display res_id, order_date, revenue, revenue_change

# Q22) Find customers whose total spend ranks in top 10%.
# Display cust_id,spend and spend_decile (Hint use ntile window function)

# Q23) Find the most frequently ordered pair of menu items by same customer.

# Q24) Find pairs of customers who placed orders on the same date.
# Solve using self-join. Display cust1_name, cust2_name, order_date

# Q25) Find duplicate-aged customer pairs
# Dispaly Cust1_name, cust2_name and age

# Q26) Find customers who never ordered from the same restaurant twice

# Q27) Find restaurants where veg items qty solds outnumber non-veg items
# qty sold

# Q28) Find top 3 menu items with maximum markup percentage
# markup_percentage = % diff between app_price and res_price


# Q29) Find restaurants whose average markup exceeds overall average markup
# markup = app_price - res_price
# Dispaly res_name

# Q30) Rank restaurants by total commission earned
# Display res_name, total_commission, commission_rank

# Q31) Find menu items priced above restaurant's own average app price
# Display item_name, res_name, app_price

# Q32) Find orders where total commission exceeded order average commission
# Commission = app_price - res_price
# Display ordeR_id, commission

# Q33) Find restaurant with highest average commission per item sold
# Display res_name avg_commission, rank




# Ignore spelling mistakes(if any) 










