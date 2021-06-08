--Преговор Контролно 1
--ОТзад напред 
--4
--select code, maker, count(*) as num_pc_higher_price --недовършена
--from pc as p join product on p.model=product.model
--group by code, maker, price
--having count(*) >=(select count(*)
--					from pc
--					where price >= p.price);

--3
--select pc.model, avg(price)
--from pc join product as p on pc.model = p.model
--group by pc.model, maker
--having  avg(pc.price)<= (select min(price)
--						from laptop join product as prod on laptop.model=prod.model
--						where p.maker = prod.maker)

--2
--select p.model
--from product as prod join pc as p on prod.model=p.model
--where p.price < all(select min(price)
--					from  product as pro join laptop as l on pro.model=l.model
--					where prod.maker = pro.maker)
--group by p.model;
		
--1

--select l.model, l.code, l.screen
--from laptop as l
--where  l.model in (select model
--				from laptop
--				where screen = '15') and l.model in (select model
--													from laptop
--													where screen = '11') and l.code not in (select code	
--																							from laptop
--																							where screen = '12');

--select distinct ship
--from outcomes join battles on name = battle
--where ship in (select ship
--				from outcomes as o join battles on name = battle
--				where RESULT = 'damaged' and date < (select date
--													from outcomes join battles on name = battle
--													where o.ship = ship and RESULT = 'ok'));

--select count(distinct SHIP)
--from outcomes join battles on name = battle
--where ship in (select ship
--				from outcomes as o join battles on name = battle
--				where RESULT = 'damaged' and date < (select date
--													from outcomes join battles on name = battle
--													where o.ship = ship and RESULT = 'ok'));


--select name, numguns, displacement
--from classes as c join ships on c.class = ships.class
--where displacement =all(select displacement
--		    			from classes as t join ships on t.class = ships.class
--						where c.displacement >= t.displacement );
				
				
--select battle 
--from ships as s join outcomes on s.name = ship
--group by battle
--having count(ship) > (select count(ship)
--						from ships as sh join outcomes as o on sh.name = o.ship
--						where battle = 'Guadalcanal');

--select battle 
--from classes join ships as s on classes.class=s.class 
--			join outcomes on s.name = ship
--group by battle
--having count(country) > (select count(country)
--						from classes as c join ships as sh on c.class=sh.class 
--									join outcomes as o on sh.name = o.ship
--						where battle = 'Surigao Strait');

--select country, count(ship)
--from classes join ships as s on classes.class=s.class 
--			join outcomes on s.name = ship
--group by country, result
--having result = 'sunk';

--select name, country
--from classes join ships as s on classes.class=s.class 
--where name in (select name 
--				from ships join outcomes on name = ship 
--				where result = 'sunk') or name not in (select ship
--														from outcomes);

--select distinct ship
--from ships join outcomes on name=ship
--where  name like 'C%' or name like 'K%'
--group by ship
--having count(battle) >= 1;


--select movietitle, YEAR, count(name)
--from movie join starsin as s on title=s.movietitle
--		   join moviestar on s.starname=name
--where starname in(select starname
--					from starsin 
--					where s.MOVIETITLE = MOVIETITLE)
--group by MOVIETITLE, year
--having count(*) > 2;

--7 довърши 
--select studioname, starname, count() as num_movies
--from 



--select name
--from moviestar
--where gender = 'M' and birthdate >=all (select birthdate
--									from moviestar 
--									where gender='M' );

--select studioname, title, year 
--from movie as m
--group by studioname, title, year
--having year >=all (select year 
--				from movie 
--				where m.studioname = studioname)

--select starname, count(movietitle)
--from starsin 
--group by starname;

--select m.studioname, count(starname) --грешка в отговора
--from movie as m join starsin as s on title =movietitle
--where starname in (select distinct starname
--					from movie  join starsin on title =movietitle 
--					where m.title = title and m.studioname = studioname)
--group by STUDIONAME

--select name, gender
--from MOVIESTAR
--where name like 'J%' and birthdate >= '1948'
--order by gender




--select title, year, length 
--from movie
--where year < '2000' and length > '120' or length is null
