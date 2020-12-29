/* Weather Observation Station 1 */
select city , state from station

/* Weather Observation Station 2 */
select round(sum(lat_n),2), round(sum(long_w),2) from station

/* Weather Observation Station 3 */
select distinct city from station where (id mod 2) = 0

/* Weather Observation Station 4 */
select (count(city) - count(distinct city)) from station

/* Weather Observation Station 5 */
SELECT CITY, CHAR_LENGTH(CITY)  FROM STATION WHERE LENGTH(CITY)=(SELECT MIN(CHAR_LENGTH(CITY)) FROM STATION)  ORDER BY CITY ASC LIMIT 1;
SELECT CITY , CHAR_LENGTH(CITY) FROM STATION WHERE LENGTH(CITY)=(SELECT MAX(CHAR_LENGTH(CITY)) FROM STATION)  ORDER BY CITY ASC LIMIT 1;

/* Weather Observation Station 6 */
select distinct city from station where left(city, 1) in ('a','e','i','o','u')

/* Weather Observation Station 7 */
select distinct city from station where right(city, 1) in ('a','e','i','o','u')

/* Weather Observation Station 8 */
select distinct city from station where left(city, 1) in ('a','e','i','o','u') and 
                                        right(city, 1) in ('a','e','i','o','u')

/* Weather Observation Station 9 */
select distinct city from station where lower(substr(city, 1, 1)) not in ('a','e','i','o','u');

/* Weather Observation Station 10 */
select distinct city from station where lower(right(city, 1)) not in ('a','e','i','o','u')

/* Weather Observation Station 11 */
select distinct city from station where lower(left(city, 1)) not in ('a','e','i','o','u') or lower(right(city, 1)) not in ('a','e','i','o','u')

/* Weather Observation Station 12 */
select distinct city from station where lower(left(city, 1)) not in ('a','e','i','o','u') and lower(right(city, 1)) not in ('a','e','i','o','u')

/* Weather Observation Station 13 */
select round(sum(lat_n),4) from station
where lat_n > 38.7880 and lat_n < 137.2345 

/* Weather Observation Station 14 */
select round(max(lat_n),4) from station where lat_n <  137.2345 order by lat_n desc

/* Weather Observation Station 15 */
select round(long_w,4) from station where lat_n in (select max(lat_n) from station where 
                                                    lat_n < 137.2345 order by lat_n desc)
                                                    
/* Weather Observation Station 16 */
select round(min(lat_n),4) from station where lat_n > 38.7780 

/* Weather Observation Station 17 */
SELECT ROUND(LONG_W, 4) FROM STATION WHERE LAT_N > 38.7780 ORDER BY LAT_N LIMIT 1;

/* Weather Observation Station 1 */

/* Weather Observation Station 1 */

/* Weather Observation Station 1 */

/* Weather Observation Station 1 */

/* Weather Observation Station 1 */
