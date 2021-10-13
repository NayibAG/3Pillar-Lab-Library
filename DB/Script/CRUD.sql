USE LibraryBD
GO

/* Country */
GO
CREATE PROCEDURE InsertCountry(@CountryName varchar(50))
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		INSERT INTO [dbo].[Country]
	VALUES(@CountryName);
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE UpdateCountry(@CountryID int,
	@CountryName varchar(50))
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		UPDATE [dbo].[Country] 
			SET CountryName = @CountryName 
			WHERE CountryID = @CountryID;
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE DeleteCountry(@CountryID int)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		DELETE FROM [dbo].[Country]
			WHERE CountryID = @CountryID;
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE SelectCountry
AS
BEGIN
	SELECT CountryID, CountryName
	FROM [dbo].[Country];
END

/* Gender */
GO
CREATE PROCEDURE InsertGender(@GenderName varchar(50))
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		INSERT INTO [dbo].[Gender]
	VALUES(@GenderName);
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE UpdateGender(@GenderID int,
	@GenderName varchar(50))
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		UPDATE [dbo].[Gender] 
			SET GenderName = @GenderName 
			WHERE GenderID = @GenderID;
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE DeleteGender(@GenderID int)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		DELETE FROM [dbo].[Gender]
			WHERE GenderID = @GenderID;
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE SelectGender
AS
BEGIN
	SELECT GenderID, GenderName
	FROM [dbo].[Gender];
END

/* Genre */
GO
CREATE PROCEDURE InsertGenre(@GenreName varchar(50))
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		INSERT INTO [dbo].[Genre]
	VALUES(@GenreName);
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE UpdateGenre(@GenreID int,
	@GenreName varchar(50))
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		UPDATE [dbo].[Genre] 
			SET GenreName = @GenreName 
			WHERE GenreID = @GenreID;
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE DeleteGenre(@GenreID int)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		DELETE FROM [dbo].[Genre]
			WHERE GenreID = @GenreID;
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE SelectGenre
AS
BEGIN
	SELECT GenreID, GenreName
	FROM [dbo].[Genre];
END

/* Author */
GO
CREATE PROCEDURE InsertAuthor(@AuthorName varchar(50),
	@GenderID int)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		INSERT INTO [dbo].[Author]
	VALUES(@AuthorName, @GenderID);
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE UpdateAuthor(@AuthorID int,
	@AuthorName varchar(50),
	@GenderID int)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		UPDATE [dbo].[Author] 
			SET AuthorName = @AuthorName,
			GenderID = @GenderID 
			WHERE AuthorID = @AuthorID;
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE DeleteAuthor(@AuthorID int)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		DELETE FROM [dbo].[Author]
			WHERE AuthorID = @AuthorID;
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE SelectAuthor
AS
BEGIN
	SELECT AuthorID, AuthorName, GenderID
	FROM [dbo].[Author];
END

/* Editorial */
GO
CREATE PROCEDURE InsertEditorial(@EditorialName varchar(50),@CountryID int)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		INSERT INTO [dbo].[Editorial]
	VALUES(@EditorialName,@CountryID);
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE UpdateEditorial(@EditorialID int,
	@EditorialName varchar(50),@CountryID int)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		UPDATE [dbo].[Editorial] 
			SET EditorialName = @EditorialName,
			CountryID = @CountryID 
			WHERE EditorialID = @EditorialID;
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE DeleteEditorial(@EditorialID int)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		DELETE FROM [dbo].[Editorial]
			WHERE EditorialID = @EditorialID;
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE SelectEditorial
AS
BEGIN
	SELECT EditorialID, EditorialName, CountryID
	FROM [dbo].[Editorial];
END

/* Language */
GO
CREATE PROCEDURE InsertLanguage(@LanguageName varchar(50))
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		INSERT INTO [dbo].[Language]
	VALUES(@LanguageName);
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE UpdateLanguage(@LanguageID int,
	@LanguageName varchar(50))
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		UPDATE [dbo].[Language] 
			SET LanguageName = @LanguageName 
			WHERE LanguageID = @LanguageID;
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE DeleteLanguage(@LanguageID int)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		DELETE FROM [dbo].[Language]
			WHERE LanguageID = @LanguageID;
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE SelectLanguage
AS
BEGIN
	SELECT LanguageID, LanguageName
	FROM [dbo].[Language];
END

/* Book */
GO
CREATE PROCEDURE InsertBook(
	@Pages int,
	@PublishedDate date,
	@Title varchar(50),
	@ISBN int,
	@Amount int,
	@AuthorID int,
	@GenreID int,
	@EditorialID int,
	@LanguageID int
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		INSERT INTO [dbo].[Book]
	VALUES(@Pages,
			@PublishedDate,
			@Title,
			@ISBN,
			@Amount,
			@AuthorID,
			@GenreID,
			@EditorialID,
			@LanguageID);
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE UpdateBook(
	@BookID int,
	@Pages int,
	@PublishedDate date,
	@Title varchar(50),
	@ISBN int,
	@Amount int,
	@AuthorID int,
	@GenreID int,
	@EditorialID int,
	@LanguageID int
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		UPDATE [dbo].[Book] 
			SET Pages = @Pages,
				PublishedDate = @PublishedDate,
				Title = @Title,
				ISBN = @ISBN,
				Amount = @Amount,
				AuthorID = @AuthorID,
				GenreID = @GenreID,
				EditorialID = @EditorialID,
				LanguageID = @LanguageID
			WHERE BookID = @BookID;
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE DeleteBook(@BookID int)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
    		DELETE FROM [dbo].[Book]
			WHERE BookID = @BookID;
    		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH
END

GO
CREATE PROCEDURE SelectBook
AS
BEGIN
	SELECT BookID,
		Pages,
		PublishedDate,
		Title,
		ISBN,
		Amount,
		AuthorID,
		GenreID,
		EditorialID,
		LanguageID
	FROM [dbo].[Book];
END