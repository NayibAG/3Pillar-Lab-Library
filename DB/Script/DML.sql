USE LibraryBD
GO

INSERT INTO [dbo].[Country]
	([CountryName])
VALUES
	('Costa Rica'),
	('USA'),
	('Italy'),
	('Russia'),
	('France'),
	('Germany'),
	('Japon'),
	('China'),
	('Sweden'),
	('Brazil')
GO

INSERT INTO [dbo].[Gender]
	([GenderName])
VALUES
	('Man'),
	('Woman'),
	('Other')
GO

INSERT INTO [dbo].[Genre]
	([GenreName])
VALUES
	('Romance'),
	('Fiction'),
	('Adventure'),
	('Drama'),
	('Science Fiction'),
	('Horror'),
	('Autobiography'),
	('Fantasy'),
	('Paranormal'),
	('Comedy')
GO



INSERT INTO [dbo].[Editorial]
	([EditorialName],[CountryID])
VALUES
	('Obras Selectas',1),
	('Alma Clasicos Ilustrados',1),
	('Penguin Classics',1),
	('AlFAGUARA',1),
	('DEBOLSILLO',2),
	('EDIMAT',2),
	('Diana',3),
	('SCHOLASTIC',4),
	('Editorial Costa Rica',5),
	('RBA',6)
GO

INSERT INTO [dbo].[Language]
	([LanguageName])
VALUES
	('Spanish'),
	('English'),
	('Italian'),
	('Russian'),
	('French'),
	('German'),
	('Japanese'),
	('Chinese'),
	('Swedish'),
	('Portuguese')
GO

INSERT INTO [dbo].[Author]
	([AuthorName],[GenderID])
VALUES
	('Oscar Wilde',1),
	('Jane Austin',2),
	('Charles Dickens',1),
	('Victor Hugo',1),
	('Arthur Conan Doyle',1),
	('William Shakespeare',1),
	('Edgar Allan Poe',1),
	('Charlotte Bronte',2),
	('Emily Bronte',2),
	('Louisa May Alcott',2)
GO

INSERT INTO [dbo].[Book]
	([Pages]
	,[PublishedDate]
	,[Title]
	,[ISBN]
	,[Amount]
	,[AuthorID]
	,[GenreID]
	,[EditorialID]
	,[LanguageID])
VALUES
	(194, '1890-07-14', 'Dorian Grey', 978849794, 10, 1, 4, 1, 2),
	(569, '1813-01-28', 'Pride and prejudice', 123471238, 10, 2, 1, 2, 2),
	(169, '1843-12-19' , 'A Christmas Carol', 812735912, 10, 3, 8, 3, 2),
	(1090, '1862-05-22', 'Les miserables', 193257168, 10, 4, 4, 4, 2),
	(127, '1887-11-22', 'Scarlet Study', 193257167, 10, 5, 3, 5, 2),
	(104, '1611-07-14', 'Hamlet', 481293875, 10, 6, 4, 6, 2),
	(64, '1845-01-29', 'The raven', 903845629, 10, 7, 6, 7, 2),
	(794, '1847-10-16', 'Jane Eyre', 534234678, 10, 8, 1, 8, 2),
	(189, '1847-10-16', 'Agnes Grey', 534234679, 10, 9, 1, 9, 2),
	(229, '1869-11-29', 'Little women', 198247515, 10, 10, 1, 10, 2)
GO