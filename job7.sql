#JOB7

#1.

#Lanalyse du modèle relationnel de la base de données, englobant les tables "game", "goal" et "eteam", met en lumière
#les cardinalités entre ces entités . Nous pouvons en tirer aprés observation que :
#- dans un match, il peut y avoir 0 ou plusieurs buts ( game-goal) 
#- une eteam peut étre impliqué dans plusieurs matchs (game-eteam)
#- une eteam peut marqué 0 ou plusieurs buts (goal-eteam)

#2.
Select matchid, player 
FROM goal 
where teamid ='GER'


#3.
SELECT id,stadium,team1,team2
FROM goal
where id ='1012'


#4.
SELECT goal.player, goal.teamid, game.stadium, game.mdate
FROM game
join goal on id.game = matchid.goal
where teamid ='GER'


#5.

SELECT game.team1, game.team2, goal.player
FROM goal
JOIN game ON goal.matchid = game.id
WHERE goal.player = 'Mario'


#6.

SELECT * 
from game
JOIN eteam ON game.id = eteam.eteam


#7.

SELECT goal.player, goal.teamid, goal.gtime, eteam.coach
FROM goal
JOIN eteam ON goal.teamid = eteam.id
where gtime <= 10

#8.

SELECT game.mdate, eteam.teamname
FROM game
JOIN eteam ON game.team1 = eteam.id
where eteam.coach = 'Fernando Santos'



#9.

SELECT goal.player
FROM goal
JOIN game ON goal.matchid = game.id
WHERE game.stadium = 'National Stadium, Warsaw'


#10.

SELECT teamid, count(*) as nbre_buts
FROM goal
group by teamid


#11.

SELECT game.stadium, count(goal.gtime) as buts_marques
FROM game
LEFT JOIN goal ON game.id = goal.matchid
GROUP BY game.stadium

#12.

SELECT game.id, game.mdate, count(goal.gtime) as buts_marques
FROM game
JOIN goal ON game.id = goal.matchid
WHERE goal.teamid = 'FRA'
GROUP BY game.mdate
