--MOVIES
--КАК СЕ ПОКАЗВА И NULL
--select title, year, length
--from movie
--where length > 120 and year < '2000';

--select name , gender 
--from moviestar
--where name like 'J%' and BIRTHDATE>1948;

--ГРЕШЕН ОТГОВОР
--select studioname, count(starname)
--from movie as m join starsin on m.title = MOVIETITLE
--where starname in (select starname
--				from movie as mo
--				where title in (select title
--								from movie 
--								where studioname = mo.studioname))
--Group By studioname;

--select starname, count(movietitle)
--from starsin
--group by starname;

--select studioname, title, year
--from movie as m
--where year = (select max(year)
--			from movie 
--			where studioname = m.STUDIONAME);

--select name
--from moviestar 
--where gender = 'M'  and BIRTHDATE >= all (select BIRTHDATE
--						from MOVIESTAR
--						where gender = 'M');


--7
--select studioname, starname, count(*)
--from movie m join starsin on year = MOVIEYEAR and title = movietitle
--group by studioname,starname
--having count (*) >=all (select count(*)
--					from movie join starsin on year = MOVIEYEAR and title = movietitle
--					where m.studioname = studioname
--					group by studioname, starname);

--select movietitle, movieyear, count(STARNAME)
--from movie join starsin on title = MOVIETITLE
--group by movietitle, MOVIEYEAR
--having count (*) > 2;

--SHIPS
--select distinct name
--from ships join OUTCOMES on ship = name
--where name like 'C%' or name like 'K%'
--group by name
--having count(battle) >= 1;

--select name, country
--from classes join ships on classes.class = ships.class
--where name in (select ship
--				from ships join outcomes on ship = name
--				where result not like 'sunk') or name not in  (select ship
--																from OUTCOMES);

--ЛИПСВА ЧАСТ ОТ УСЛОВИЕТО
--select country, count(name)
--from classes as c join ships as s on c.class = s.class
--				join outcomes as o on s.NAME = o.SHIP
--where country = (select country
--				from classes 
--				where c.class = class ) and RESULT = 'sunk'
--group by country;


--4
select battle
from outcomes join ships on name = ship
group by battle
having count(*) < (select count(*)
					from ships
					where 