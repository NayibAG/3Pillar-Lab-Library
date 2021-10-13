CREATE DATABASE LibraryBD
GO
USE LibraryBD

GO
CREATE TABLE Country
(
	CountryID int identity(1,1),
	CountryName varchar(50) not null,
	PRIMARY KEY(CountryID)
)

GO
CREATE TABLE Gender
(
	GenderID int identity(1,1),
	GenderName varchar(50) not null,
	PRIMARY KEY(GenderID)
)

CREATE TABLE Genre
(
	GenreID int identity(1,1),
	GenreName varchar(50) not null,
	PRIMARY KEY(GenreID)
)

CREATE TABLE Author
(
	AuthorID int identity(1,1),
	AuthorName varchar(50) not null, 
	GenderID int,
	PRIMARY KEY(AuthorID),
	FOREIGN KEY(GenderID) REFERENCES Gender(GenderID)
)

CREATE TABLE Editorial
(
	EditorialID int identity(1,1),
	EditorialName varchar(50) not null,
	CountryID int, 
	PRIMARY KEY(EditorialID),
	FOREIGN KEY(CountryID) REFERENCES Country(CountryID)
)

CREATE TABLE [Language]
(
	LanguageID int identity(1,1),
	LanguageName varchar(50) not null,
	PRIMARY KEY(LanguageID)
)

CREATE TABLE Book
(
	BookID int identity(1,1),
	Pages int not null,
	PublishedDate date not null,
	Title varchar(50) not null,
	ISBN int,
	Amount int,
	AuthorID int,
	GenreID int,
	EditorialID int,
	LanguageID int,
	PRIMARY KEY(BookID),
	UNIQUE (ISBN),
	FOREIGN KEY(AuthorID) REFERENCES Author(AuthorID),
	FOREIGN KEY(GenreID) REFERENCES Genre(GenreID),
	FOREIGN KEY(EditorialID) REFERENCES Editorial(EditorialID),
	FOREIGN KEY(LanguageID) REFERENCES [Language](LanguageID)
)