INSERT INTO ����(���_����,���_����, ����, ������, г�_�������, �����������_��������) VALUES 
(3, 4, 'grey', 'Lotus', 2015, 250),
(4, 5, 'black', 'Lamborgini', 2020, 380),
(5, 6, 'yellow', 'Aston-Martin', 2010, 320);

BULK
INSERT ����
FROM 'D:\Univer\3CursLabs\����\����.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);

BULK
INSERT �����
FROM 'D:\Univer\3CursLabs\����\�����.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);
UPDATE ���� SET г�_�������='1998' WHERE ���_����='2';

UPDATE ���� SET �����������_��������=�����������_��������+10;

DELETE FROM ���� WHERE г�_�������< GetDate();
