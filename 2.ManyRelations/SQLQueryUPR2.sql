--MOVIE UPR2
--SELECT NAME
--FROM STARSIN CROSS JOIN MOVIESTAR
--WHERE STARSIN.STARNAME = MOVIESTAR.NAME AND MOVIESTAR.GENDER = 'M' AND STARSIN.MOVIETITLE = 'The Usual Suspects';

--SELECT STARSIN.STARNAME
--FROM MOVIE CROSS JOIN STARSIN 
--WHERE MOVIE.TITLE = STARSIN.MOVIETITLE AND STUDIONAME LIKE 'MGM' AND MOVIE.YEAR = 1995;

--SELECT NAME  ИМА ПОВТОРЕНИЕ
--FROM MOVIEEXEC CROSS JOIN MOVIE 
--WHERE MOVIEEXEC.CERT# = MOVIE.PRODUCERC# AND STUDIONAME = 'MGM';

--SELECT m1.TITLE
--FROM MOVIE AS m1, MOVIE AS m2
--WHERE m2.TITLE LIKE 'Star Wars' AND m1.LENGTH > m2.LENGTH;

--SELECT m1.NAME
--FROM MOVIEEXEC AS m1, MOVIEEXEC AS m2
--WHERE m2.NAME = 'Stephen Spielberg' AND m1.NETWORTH > m2.NETWORTH;

--SELECT TITLE
--FROM MOVIEEXEC AS m1, MOVIEEXEC AS m2, MOVIE 
--WHERE m2.NAME = 'Stephen Spielberg' AND m1.CERT# = MOVIE.PRODUCERC# AND m1.NETWORTH> m2.NETWORTH;

--SHIPS UPR2
--SELECT SHIPS.NAME
--FROM CLASSES, SHIPS
--WHERE SHIPS.CLASS = CLASSES.CLASS AND CLASSES.DISPLACEMENT>50000;

--SELECT SHIPS.NAME, CLASSES.DISPLACEMENT, CLASSES.NUMGUNS
--FROM SHIPS, CLASSES, OUTCOMES
--WHERE OUTCOMES.BATTLE = 'Guadalcanal' AND CLASSES.CLASS = SHIPS.CLASS AND OUTCOMES.SHIP = SHIPS.NAME;

--SELECT c1.COUNTRY
--FROM CLASSES AS c1, CLASSES AS c2
--WHERE c1.COUNTRY = c2.COUNTRY AND c1.TYPE = 'bb' AND c2.TYPE = 'bc';

--SELECT o1.SHIP  ОПРАВИ!!!!
--FROM OUTCOMES AS o1, OUTCOMES AS o2, BATTLES AS b1,  BATTLES AS b2
--WHERE o1.RESULT = 'damaged' AND o1.BATTLE = b1.NAME AND o2.BATTLE = b2.NAME AND o2.RESULT = 'ok' AND b2.DATE> b1.DATE;

--EXECUTE IN PC DATA BASE

--SELECT product.maker, laptop.speed
--FROM product, laptop
--WHERE product.type like 'Laptop' AND laptop.hd >= 9 AND laptop.model = product.model;

--(SELECT product.model, laptop.price
--FROM PRODUCT, laptop
--WHERE product.maker like 'B' AND product.model = laptop.model)
--UNION
--(SELECT product.model, pc.price
--FROM PRODUCT, pc
--WHERE product.maker like 'B' AND product.model = pc.model)
--UNION 
--(SELECT product.model, printer.price
--FROM PRODUCT, printer
--WHERE product.maker like 'B' AND product.model = printer.model)

--(SELECT product.maker
--FROM product, laptop
--WHERE product.model = laptop.model)
--EXCEPT
--(SELECT product.maker
--FROM product, pc
--WHERE product.model = pc.model)

--RESHI 4TA

--SELECT p1.model, p2.model
--FROM pc as p1, pc as p2
--WHERE p1.speed = p2.speed and p1.ram = p2.ram and p1.model < p2.model;

--select p1.hd  OTGOVOR: 5/8/10/10 VMESTO 5/8/10/14??
--from pc as p1, pc as p2
--where p1.hd = p2.hd and p2.model < p1.model;

SELECT product.maker
FROM product, pc as p1, pc as p2
WHERE p1.model != p2.model and 




