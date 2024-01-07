#1. Classement de moratalité infantile par continent

select Region , avg( `Infant mortality (per 1000 births)` )
from countries_of_the_world cotw 
group by Region 



#2. Agriculture

select Country , Agriculture 
from countries_of_the_world cotw 
order by Agriculture desc  limit 10

#3. Migration 

select avg(`Net migration`) 
from countries_of_the_world cotw 

#4. Birthrate and Deathrate

SELECT AVG(Birthrate) AS birthrate_avg, AVG(Deathrate) AS deathrate_avg
FROM countries_of_the_world cotw 

#5. Crops

SELECT  avg(`Crops (%)`)
from countries_of_the_world cotw 

#6. Industry insights

SELECT  Country, Industry
from countries_of_the_world cotw 
order by Industry desc  limit 10







