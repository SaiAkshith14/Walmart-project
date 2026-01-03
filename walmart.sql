select count(*) from walmart -- total rows 

select distinct payment_method from walmart -- unique payment method's

select payment_method,count(*) from walmart -- total count of each payment method,Highest is Ewallet
group by payment_method 
order by count(*) desc

-- Business Problem's
-- 1Q.What are the different payment methods, and how many transactions and 
-- items were sold with each method?
select distinct payment_method,count(payment_method) as total_transactions,
sum(quantity) as total_quantity
from walmart 
group by payment_method
order by total_transactions desc;

-- 2Q. Which category received the highest average rating in each branch?
with cte as (
select branch,category,avg(rating) as Avg_rating 
from walmart
group by branch,category
),
cte2 as (
select branch,category,avg_rating,
rank() over(partition by branch order by Avg_rating desc) as ran_num
from cte
)
select * from cte2
where ran_num = 1
order by avg_rating desc

-- 3Q. What is the busiest day of the week for each branch based on transaction volume?
select * from
(select branch,
DAYNAME(str_to_date(date,'%d/%m/%y')) as Day_name,
count(*) as No_of_Transactions,
rank() over(partition by branch order by count(*) desc) as rnk
from walmart 
group by 1,2
) as t
where rnk = 1
order by No_of_Transactions desc

-- 4Q. What are the average, minimum, and maximum ratings for each category in each city?
select distinct city,category,avg(rating) as Avg_rating,min(rating) as Min_rating,
max(rating) as Max_rating
from walmart 
group by city,category

-- 5Q. What is the total profit for each category, ranked from highest to lowest?

select category,sum(`total price`) as Total_revenue,
sum(`total price` * profit_margin) as total_profit
from walmart 
group by 1
order by total_profit desc

select * from walmart

-- 6Q. What is the most frequently used payment method in each branch?
select * from 
(select branch,payment_method,count(*) as total_transactions,
rank() over(partition by branch order by count(*) desc) as rnk
from walmart
group by 1,2
) as t
where rnk = 1
order by total_transactions desc

-- 7Q. How many transactions occur in each shift (Morning, Afternoon, Evening) across branches?

select 
	CASE
		when hour(time) < 12 then 'Morning'
        when hour(time) between 12 and 17 then 'AfterNoon'
        else 'Evening'
	end as Day_time,
    count(*) as Total_transactions
    from walmart 
    group by 1
    
-- 8Q. For each branch, which city and time of day (Morning, Afternoon, or Evening) 
-- records the highest number of Transactions?
select * from 
(select branch,city,
	CASE
		when hour(time) < 12 then 'Morning'
        when hour(time) between 12 and 17 then 'AfterNoon'
        else 'Evening'
	end as Day_time,
    count(*) as Total_Transactions,
    rank() over(partition by branch order by count(*) desc) as rnk 
    from walmart 
    group by 1,2,3
    ) as t
    where rnk = 1
    order by Total_Transactions desc
    
-- 9Q. Which branches experienced the largest decrease in revenue compared to the previous year?
with revnue_2022 as
(select branch,sum(`total price`) as revnue
from walmart 
where YEAR(str_to_date(date,'%d/%m/%y')) = 2022
group by 1
),
revnue_2023 as
(select branch,sum(`total price`) as revnue
from walmart 
where YEAR(str_to_date(date,'%d/%m/%y')) = 2023
group by 1
)
select ls.branch,ls.revnue as last_year_revnue,cs.revnue as current_year_revnue,
round((ls.revnue-cs.revnue)/ls.revnue * 100,2) as rev_dec_ratio
from revnue_2022 as ls 
join revnue_2023 as cs on cs.branch = ls.branch
where ls.revnue > cs.revnue
order by rev_dec_ratio desc
limit 5

