DROP TABLE IF EXISTS AirTickets+ADs-

if not exists (select +ACo- from sysobjects where name+AD0-'AirTickets' and xtype+AD0-'U')

CREATE TABLE AirTickets(
	id INT IDENTITY(1,1) NOT NULL,
	AirlineName nvarchar(50) DEFAULT '+BBEEFQQbBBAEEgQYBBA-', 
	WhereFly nvarchar(50) NOT NULL,
	FromFly nvarchar(50) NOT NULL,
	Price money NOT NULL,
	CHECK (Price +AD4APQ- 20),
	FlightNumber bigint NOT NULL, 
	Place int NOT NULL,
	DepartureTime datetime NOT NULL,
	ArrivalTime datetime NOT NULL,
	TimeInFlight int NOT NULL,

	PRIMARY KEY(id)
)+ADs-

INSERT INTO AirTickets
VALUES (NULL, '+BCIEPgRABD4EPQRCBD4-', '+BB8EMARABDgENg-', 2462, 6285634, 57, '2023-05-30 20:45:00', '2023-06-01 09:30:00', 1845)