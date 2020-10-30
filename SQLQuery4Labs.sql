ALTER TABLE Договір_поставки
DROP CONSTRAINT Фксалону;

ALTER TABLE Салон
	DROP COLUMN Вулиця;
ALTER TABLE Салон
ALTER COLUMN Будинок decimal(9,0) NOT NULL;

ALTER TABLE Контракт
ALTER COLUMN Дата_заключення varchar(20) NULL;

ALTER TABLE Договір_про_оренду
ALTER COLUMN Код_договору_про_оренду decimal(9,0) NOT NULL;

ALTER TABLE Договір_про_оренду
ADD ID_паспорта nvarchar(20);

ALTER TABLE Договір_про_оренду
    ADD CONSTRAINT ID_паспорта  UNIQUE (Код_договору_про_оренду, Language);

	ALTER TABLE Договір_поставки
DROP CONSTRAINT Фксалону;

ALTER TABLE Договір_поставки
ADD CONSTRAINT Фксалону FOREIGN KEY (Вулиця) REFERENCES Салон(Код_Салону) ON DELETE NO ACTION;
