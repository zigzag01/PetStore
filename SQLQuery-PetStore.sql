DROP TABLE IF EXISTS PetSuppliesStore;

if not exists (select * from sysobjects where name='PetSuppliesStore' and xtype='U')

CREATE TABLE PetSuppliesStore(
	id INT IDENTITY(1,1) NOT NULL,
	Pet nvarchar(50) NOT NULL, 
	ProductName nvarchar(100) NOT NULL,
	Price money NOT NULL,
	CHECK (Price >= 1),
	ProductWeight int NOT NULL,
	CHECK (ProductWeight >= 1 AND ProductWeight <= 5000),
	Manufacturer nvarchar(100) NOT NULL,
	CountryOfOrigin nvarchar(100) NOT NULL,
	Category nvarchar(100) NOT NULL,
	ProductDescription nvarchar(100),
	ExpirationDate int NOT NULL,
	CHECK (ExpirationDate >= 1),
	ArticleNumber bigint NOT NULL,
	CHECK (LEN(ArticleNumber) = 10),
	Rating int NOT NULL,
	ProductAvailability int,

	PRIMARY KEY(id)
)

INSERT INTO PetSuppliesStore(Pet, ProductName, Price, ProductWeight, Manufacturer, CountryOfOrigin, Category, ProductDescription, ExpirationDate, ArticleNumber, Rating, ProductAvailability)
VALUES ('Собака', 'Лежанка Happy Friends', 68.39, 900, 'Happy Friends', 'Беларусь', 'Лежак', 'Лежанка для собак', 12, 4065956523, 2, 57);

INSERT INTO PetSuppliesStore
VALUES ('Кошка', 'Когтеточка деревянная', 37.39, 5000, 'Happy Friends', 'Россия', 'Когтеточка', 'Когтеточка из дерева позволяет точить когти под разными углами', 16, 7532976082, 5, 101);

INSERT INTO PetSuppliesStore
VALUES ('Попугай', 'Корм для волнистых попугаев', 10.19, 1000, 'Versele-Laga/BFB plusKft.', 'Венгрия', 'Корм', NULL, 24, 4213697620, 5, 443);

INSERT INTO PetSuppliesStore
VALUES ('Кошка', 'Корм для кошек', 14.63, 300, 'Альтернатива', 'Россия', 'Корм', 'Полезный кошачий корм', 8, 2684957300, 3, 177);

INSERT INTO PetSuppliesStore
VALUES ('Собака', 'Шампунь с норковым маслом', 12.79, 300, 'Beeztees', 'Нидерланды', 'Уход', 'Придает блеск и приятный запах шерсти животного', 6, 9562500451, 1, 605);

INSERT INTO PetSuppliesStore
VALUES ('Хомяк', 'Лакомство для грызунов', 7.35, 200, 'Mealberry ', 'Германия', 'Корм', 'Готовится с помощью высокотехнологичной сушки', 6, 9876330005, 5, NULL);

SELECT * FROM PetSuppliesStore;



SELECT Pet, ProductName, Category, Price, ArticleNumber FROM PetSuppliesStore
WHERE (Pet='Собака' OR Pet='Кошка') AND Price <= 50 AND Category='Корм';

SELECT * FROM PetSuppliesStore
WHERE Pet IN ('Собака', 'Попугай', 'Хомяк');

SELECT * FROM PetSuppliesStore
WHERE Category LIKE ('%рм%');