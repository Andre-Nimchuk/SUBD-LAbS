CREATE TABLE Клієнт(
	Код_клієнта INTEGER NOT NULL,
	Імя CHAR(15) NOT NULL,
	Номер_телефону INTEGER,
	Прізвище CHAR(20) NOT NULL,
	По_батькові CHAR(20) NOT NULL,
	Електронна_пошта VARCHAR(50) NOT NULL,
	PRIMARY KEY (Код_клієнта),	
);

CREATE TABLE Постачальник(
	Код_постачальника INTEGER NOT NULL,
	Назва_фірми CHAR(15) NOT NULL,
	Посилання_на_веб_сторінку VARCHAR(30) NOT NULL,
	Місто_розташування CHAR(20) NOT NULL, 
	Вулиця CHAR(20) NOT NULL,
	Будинок CHAR(6) NOT NULL,
	Номер_телефону INTEGER,
	PRIMARY KEY (Код_постачальника)
);

CREATE TABLE Адміністратор(
	Код_адміністратора INTEGER NOT NULL,
	Імя CHAR(15) NOT NULL,
	Номер_телефону_адміністратора INTEGER,
	Прізвище CHAR(20) NOT NULL,
	По_батькові CHAR(20) NOT NULL,
	Електронна_пошта VARCHAR(50) NOT NULL,
	PRIMARY KEY (Код_адміністратора),	
);

CREATE TABLE Салон(
	Код_салону INTEGER NOT NULL,
	Назва_салону CHAR(15) NOT NULL,
	Посилання_на_веб_сторінку VARCHAR(50) NOT NULL,
	Місто_розташування CHAR(15) NOT NULL, 
	Вулиця CHAR(20) NOT NULL,
	Будинок CHAR(6) NOT NULL,
	Опис_салону CHAR(100) NOT NULL,
	PRIMARY KEY (Код_салону)
);

CREATE TABLE Авто(
	Код_авто INTEGER NOT NULL,
	Тип_авто CHAR(20) NOT NULL,
	Колір CHAR(15) NOT NULL,
	Модель CHAR(20) NOT NULL, 
	Рік_випуску INTEGER NOT NULL,
	Максимальна_швидкість INTEGER NOT NULL,
	PRIMARY KEY (Код_авто)
);

CREATE TABLE Контракт(
	Код_контракту INTEGER NOT NULL, 	
	Код_салону INTEGER NOT NULL,
	Код_адміністратора INTEGER NOT NULL,
	Дата_заключення DATE NOT NULL,
	Дата_закінчення DATE NOT NULL,
	PRIMARY KEY(Код_контракту),
	CONSTRAINT Фксалон
	FOREIGN KEY(Код_салону)
	REFERENCES Салон 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT Фкадміністратора
	FOREIGN KEY(Код_адміністратора)
	REFERENCES Адміністратор
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE Договір_про_оренду(
	Код_договору_про_оренду INTEGER NOT NULL, 	
	Код_клієнта INTEGER NOT NULL,
	Код_салону INTEGER NOT NULL,
	Код_авто INTEGER NOT NULL,
	Код_адміністратора INTEGER NOT NULL,
	Дата_заключення DATE NOT NULL,
	Дата_закінчення DATE NOT NULL,
	Ціна_оренди MONEY NOT NULL,
	PRIMARY KEY(Код_договору_про_оренду),
	CONSTRAINT Фкклієнта
	FOREIGN KEY(Код_клієнта)
	REFERENCES клієнт
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT Фкавто
	FOREIGN KEY(Код_авто)
	REFERENCES авто
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT Фк_адміністратора
	FOREIGN KEY(Код_адміністратора)
	REFERENCES Адміністратор
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT Фк_салон
	FOREIGN KEY(Код_салону)
	REFERENCES Салон 
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE Договір_поставки(
	Код_договору_поставки INTEGER NOT NULL, 	
	Код_салону INTEGER NOT NULL,
	Код_постачальника INTEGER NOT NULL,
	Дата_заключення DATE NOT NULL,
	Дата_закінчення DATE NOT NULL,
	Кількість_авто INTEGER NOT NULL,
	Список_авто CHAR(80) NOT NULL,
	Сума_виплати MONEY NOT NULL,
	PRIMARY KEY(Код_договору_поставки),
	CONSTRAINT Фксалону
	FOREIGN KEY(Код_салону)
	REFERENCES Салон 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT Фкпостачальника
	FOREIGN KEY(Код_постачальника)
	REFERENCES постачальник
	ON DELETE CASCADE
	ON UPDATE CASCADE
);
