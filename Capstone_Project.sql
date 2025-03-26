create database capstone_project;
use capstone_project;

alter table wcfinancial_data
rename column ï»¿Segment to Segment;

select Segment from wcfinancial_data;

select * from wcfinancial_data;

-- Top 3 Profit earning countries in 2014?
select Country, round(Sum(Profit),2) as Total_Profit
from wcfinancial_data where Year= '2014' group by
Country order by Total_Profit Desc limit 3;








-- Which brand is most selled in the Year 2014?
select Product, round(sum(Sales),2) as Total_Sales
from wcfinancial_data where Year ='2014' group by
Product order by Total_Sales desc limit 1;








-- Which country has earned the lowest profit in 2014?
select Country, round(sum(Profit),2) as Total_Profit
from wcfinancial_data where Year ='2014' group by
Country order by Total_Profit Asc limit 1;