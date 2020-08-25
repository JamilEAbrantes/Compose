CREATE DATABASE DockerCompose
GO

USE DockerCompose
GO

CREATE TABLE Users
(
	Id					UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(),
	Name				varchar(100) NULL,
	Age					varchar(100) NULL,
	Email				varchar(500) NOT NULL,
	RegistrationDate	datetime NOT NULL
);

INSERT INTO Users (Id, Name, Age, Email, RegistrationDate) VALUES(NEWID(), 'Buda', 30, 'buda@me.com.br', GETDATE());