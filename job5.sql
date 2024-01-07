#JOB5

#1.

SELECT Country
from countries_of_the_world cotw 
where `Area (sq. mi.)`  > ( select `Area (sq. mi.)` from countries_of_the_world cotw2 where Country = 'Russia')

#2. 
SELECT  country
from countries_of_the_world cotw 
where region like '%europe%' and ( `Pop. Density (per sq. mi.)` > (
    select `Pop. Density (per sq. mi.)` 
    from countries_of_the_world cotw2 
    where Country = 'Italy'))

#3.

select Country 
from countries_of_the_world cotw 
where Population > (SELECT Population  from countries_of_the_world cotw where  Country = 'United Kingdom') and Population < (
SELECT Population  from countries_of_the_world cotw where  Country = 'Germany')

#4.
select Country , (Population / (select Population from countries_of_the_world cotw where Country ='Germany')*100)
from  countries_of_the_world cotw 
where Region like '%EUROPE%'

#5.
SELECT Country,  Region, `Area (sq. mi.)` 
from countries_of_the_world cotw 
where `Area (sq. mi.)` = (
    select max(`Area (sq. mi.)`) as Area 
    from countries_of_the_world cotw2 
    where cotw.Region = cotw2.Region)

#6.
SELECT  Region
from countries_of_the_world 
where Population <= 25000000