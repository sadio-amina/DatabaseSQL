
#JOB4

#1.

SELECT *
from nobel
where  yr = 1983

#2.
SELECT *
from nobel
where subject = 'Literature' and  yr = 1967

#3.

SELECT yr, subject
from nobel
where  winner = 'Albert Einstein'

#4.

SELECT *
from nobel
where  subject ='Literature' and yr > 1980 and yr <= 1989

#5.

SELECT winner
from nobel
where subject='Mathmatics'

SELECT count(winner)
from nobel
where subject='Mathmatics'