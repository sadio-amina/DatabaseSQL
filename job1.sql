#1. Affichage population Germany

SELECT Population 
from countries_of_the_world cotw 
where Country = 'Germany'

#2.

SELECT Country, population
from countries_of_the_world cotw 
where Country in ( 'Sweden' , 'Norway' , 'Denmark')

#3.
SELECT Country
from countries_of_the_world cotw 
where `Area (sq. mi.)` > 200000 and `Area (sq. mi.)` < 300000