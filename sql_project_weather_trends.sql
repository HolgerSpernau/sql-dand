### Code to see, if the selected city is available in the city_data file
SELECT *
FROM city_list
WHERE city = 'Suzhou'

### Code to select the city temperature data from Suzhou by combining city_data and global_data set
SELECT city.year, city.avg_temp AS city_avg_temp, sub.global_avg_temp
FROM city_data AS city
JOIN
(SELECT year, avg_temp AS global_avg_temp
 FROM global_data
) sub
ON  city.year = sub.year
WHERE city = 'Suzhou'
GROUP BY 1, 2, 3
ORDER BY 1