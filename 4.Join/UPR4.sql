--UPR4
MOVIES
select title , name 
from movie join MOVIEEXEC on PRODUCERC#=CERT#
where CERT# = (select PRODUCERC#
				from movie
				where title = 'Star Wars');

select distinct name
from MOVIEEXEC join  Movie on PRODUCERC#=CERT#
where PRODUCERC# in (select producerc#
					from movie join STARSIN on title = MOVIETITLE
					where STARNAME = 'Harrison Ford');


select name, starname
from STUDIO join MOVIE 
where presc#=PRODUCERC# and MOVIETITLE = titile ;

select distinct s.starname, me.networth, m.title 
from movie as m
	join MOVIEEXEC as me on m.PRODUCERC# = me.cert#
	join STARSIN as s on m.title = s.MOVIETITLE
where me.networth >= ALL (select networth
						from MOVIEEXEC);

select NAME, movietitle
from MOVIESTAR left outer join starsin on STARNAME=NAME
where NAME not in(select STARNAME
				  from STARSIN);


--PC
select maker, model, type
from product 
where model not in (select model 
					from laptop) and model not in (select model
													from PC) and model not in (select model
																				from printer);

select distinct maker
from product 
where maker in (select maker
				from product as p join laptop as l on p.model=l.model
				where maker in (select maker 
								  from product as p join printer as prin on p.model=prin.model ));


select distinct hd
from laptop as l join product as p on l.model = p.model
where type = 'laptop' and p.model in (select model
									from laptop);

select *
from product as prod join pc on prod.model = pc.model
where type='PC' and prod.model not in (select model
										from pc);
 
--SHIPS

select *
from classes as c join ships as s on c.class=s.class

select *
from classes as c left outer join ships as s on c.class=s.class

select c.COUNTRY, s.name
from ships as s join classes as c on s.class=c.class
where  s.name not in (select ship
				      from outcomes);

select s.name 
from classes as c join ships as s on c.class=s.class
where  c.NUMGUNS >= '7' and s.name in (select outcomes.ship
										from OUTCOMES join BATTLES on battles.NAME=BATTLE
										where date='1916');

