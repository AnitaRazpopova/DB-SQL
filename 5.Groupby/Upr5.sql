--УПРАЖНЕНИЕ 5

--PC

select AVG(speed) as AVGspeed
from pc

select maker, avg(screen) as AVGscreen
from product join laptop on product.model = laptop.model
where type = 'Laptop' 
Group by maker;

select convert(decimal(7,2), avg(speed)) as AVG
from laptop
where price > 1000;

select maker, convert(decimal(6,2), avg(price)) as AVGprice
from product join pc on product.model = pc.model
where type='PC' and maker= 'A'
group by maker;


select maker, convert(decimal(6,2), avg(pc.price)) as AVGprice
from pc 
	inner join product as p on p.model = pc.model
	inner join laptop on p.model = laptop.model
where maker= 'B'
group by maker;


select speed, convert(decimal(6,2), avg(price)) as AVGprice
from pc
group by speed;

select maker, count(*) as number_of_pc
from product join pc on product.model = pc.model
group by maker
having count(code) >= 3;

select max(price)
from product join pc on product.model = pc.model

select speed, avg(price) as avgPrice
from pc
where speed > 800
group by speed;

select  maker, avg(HD)
from product join pc on product.model = pc.model
where maker in (select maker
				from product
				where type = 'printer')
group by maker;

--SHIPS

select count(*)
from CLASSES
where type = 'bb';

select class, avg(Numguns)
from classes
where type = 'bb'
group by class;

select avg(numguns)
from CLASSES;

select classes.class, min(launched), max(launched)
from classes join ships on classes.class = ships.class
group by classes.class;

select ships.class, count(*)
from ships join OUTCOMES on name = ship
where result = 'sunk'
group by class;

select ships.class, count(*)
from ships join OUTCOMES on name = ship
where result = 'sunk' and class in( select class 
									from ships)
group by class;

select country, avg(bore)
from classes
group by country;
