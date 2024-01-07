#JOB6

#1.
Select SUM(Population) as Pop_totale
from countries_of_the_world cotw 

#2.
select SUM(Population) as Pop_totale
from countries_of_the_world cotw 
group by Region 


#3.
SELECT  sum( `Pop. Density (per sq. mi.)` ) as PIB_total
from countries_of_the_world cotw 
group by region

#4.
SELECT  sum( `Pop. Density (per sq. mi.)` ) as PIB_total
from countries_of_the_world cotw 
where Region like '%Africa%'

#5.

SELECT  count(Country) as Nombre_de_pays
from countries_of_the_world cotw 
where `Area (sq. mi.)` >=  1000000


#6.

SELECT sum( Population) as pop_es_let_lith
from countries_of_the_world cotw 
where Country in ( 'Estonia' , 'Latvia' , 'Lithuania' ) 


#7.

SELECT count(country) as nombre_pays, Region 
from countries_of_the_world cotw 
group by Region 
order by nombre_pays desc 