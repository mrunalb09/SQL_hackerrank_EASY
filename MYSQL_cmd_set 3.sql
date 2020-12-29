/* Higher Than 75 Marks */
select name from students where marks > 75 order by right(name,3), id

/* Employee Names */
select name from employee order by name 

/* Employee salaries */
select name from employee where months < 10 and salary > 2000 order by employee_id

/* Type of Triangle */
SELECT /*A,B,C,*/
        IF((A=B and B=C),'Equilateral ',
             if(((A=B or B=C or A=C) and ((A+B > C) and 
                       (B+C > A) and (A+C > B))),"Isosceles",
                    if(((A <> B <> C) and (A+B > C) and 
                       (B+C > A) and (A+C > B)),"Scalene", "Not A Triangle")
                )
          )from triangles;


/* Revising Aggregations - The Count Function */
select count(id) from city where population > 100000

/* Revising Aggregations - The Sum Function */
select sum(population) from city where district = 'California' 

/* Revising Aggregations - Averages */
select avg(population) from city where district = 'California'

/* Average Population */
select round(avg(population)) from city

/* Japan Population */
select sum(population) from city where countrycode = 'JPN'

/* Population Density Difference */
select max(population) - min(population) from city

/* The Blunder */
select round(avg(salary) - avg(replace(salary, '0', '')))+1 from employees

/* Top Earners */
select months*salary,count(*) from Employee group by 1 order by 1 desc limit 1

/* Asian Population */
select sum(a.population) from city as a inner join country as b on a.countrycode = b.code where continent = 'ASIA'

/* African cities */
select a.name from city as a inner join country as b 
on a.countrycode = b.code 
where b.continent = 'AFRICA'

/* Average Population of Each Continent */
select a.continent, floor(avg(b.population)) from country as a inner join city as b
on b.CountryCode = a.Code
group by a.continent

/* Draw The Triangle 1 */
DECLARE @var int               -- Declare 
SELECT @var = 20                -- Initialization 
WHILE @var > 0                 -- condition 
BEGIN                          -- Begin 
PRINT replicate('* ', @var)    -- Print 
SET @var = @var - 1            -- decrement 
END                            -- END 

/* Draw The Triangle 2 */
DECLARE @var int                  -- Declare  
SELECT @var = 1                   -- initialization  
WHILE @var <= 20                   -- Condition 
BEGIN                             -- Begin 
PRINT replicate('* ', @var)       -- Print 
SET @var = @var + 1               -- Set 
END                               -- end 
