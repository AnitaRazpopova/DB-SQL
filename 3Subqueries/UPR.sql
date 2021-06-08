--UPR 3
--select NAME
--from MOVIESTAR 
--where GENDER = 'M' AND NAME in ( select name
--		from MOVIEEXEC
--		where NETWORTH>'10000000');

--select NAME
--from MOVIESTAR
--where name not in (select name 
--					from MOVIEEXEC);

--select title
--from movie
--where length > (select length
--				from movie 
--				where title ='Star Wars');

--select title, name 
--from MOVIEEXEC join MOVIE on PRODUCERC# = CERT#
--where MOVIEEXEC.NETWORTH > (select NETWORTH
--							from MOVIEEXEC
--							where name = 'Merv Griffin');

--select distinct country
--from classes AS c
--where numguns >= ALL( select NUMGUNS
--					from classes);
					
--select distinct class
--from ships
--where name in ( select ship
--				from OUTCOMES
--				where result = 'sunk');

--select distinct class, name 
--from ships 
--where class in (select class
--				from classes 
--				where bore ='16');

--select name 
--from battles 
--where name in (select battle
--               from outcomes
--			   where ship in ( select name 
--								from ships
--								where class ='Kongo'));

--select class, name 
--from ships 
--where class in (select class
--				from classes as C
--				where numguns >= ALL(select numguns
--								from classes 
--								where C.bore=bore));

--select maker 
--from product 
--where model in (select model 
--				from pc
--				where speed > '500'); 

--select code, model, price
--from printer
--where  price >= ALL(select price 
--					from printer);

--select *
--from laptop
--where speed <ALL (select speed
--					from pc);

select model, price DOVURSHI
from pc, laptop, printer 
where price

--select maker 
--from product
--where model in (select model
--				from printer 
--				where color = 'y' and  price <= ALL (select price
--													from printer
--													where color = 'y'));

--select distinct maker 
--from product
--where model in (select model
--				from pc
--				where ram < ALL ( select ram
--									from pc
--									where speed >= ALL(select speed
--														from pc)));