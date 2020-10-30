INSERT INTO  Авто(Код_авто,Тип_авто, Колір, Модель, Рік_випуску, Максимальна_швидкість) VALUES 
(3, 4, 'grey', 'Lotus', 2015, 250),
(4, 5, 'black', 'Lamborgini', 2020, 380),
(5, 6, 'yellow', 'Aston-Martin', 2010, 320);

BULK
INSERT Авто
FROM 'D:\Univer\3CursLabs\СУБД\Авто.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);

BULK
INSERT Салон
FROM 'D:\Univer\3CursLabs\СУБД\Салон.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);
UPDATE Авто SET Рік_випуску='1998' WHERE Тип_авто='2';

UPDATE Авто SET Максимальна_швидкість=Максимальна_швидкість+10;

DELETE FROM Авто WHERE Рік_випуску< GetDate();

