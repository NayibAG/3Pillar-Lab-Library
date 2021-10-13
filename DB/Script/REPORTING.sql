USE LibraryBD
GO

GO
CREATE OR ALTER VIEW MaleAuthors AS
SELECT AuthorID, AuthorName, GenderName FROM Author A JOIN Gender G ON A.GenderID = G.GenderID WHERE G.GenderID = 1;

GO
CREATE OR ALTER VIEW FemaleAuthors AS
SELECT AuthorID, AuthorName, GenderName FROM Author A JOIN Gender G ON A.GenderID = G.GenderID WHERE G.GenderID = 2;

GO
-- AmountMaleAuthors
SELECT COUNT(GenderName) FROM Author A JOIN Gender G ON A.GenderID = G.GenderID WHERE G.GenderID = 1 GROUP BY G.GenderID;

GO
-- AmountFemaleAuthors
SELECT COUNT(GenderName) FROM Author A JOIN Gender G ON A.GenderID = G.GenderID WHERE G.GenderID = 2 GROUP BY G.GenderID;

GO
CREATE OR ALTER VIEW AuthorsPerGender AS
SELECT G.GenderName, COUNT(A.GenderID) AS Amount FROM Author A JOIN Gender G ON A.GenderID = G.GenderID GROUP BY G.GenderID, G.GenderName;

GO
CREATE OR ALTER VIEW EditorialsPerCountry AS
Select C.CountryName, COUNT(C.CountryName) AS Amount from Editorial E JOIN Country C ON E.CountryID = C.CountryID GROUP BY E.CountryID, C.CountryName;

GO
CREATE OR ALTER VIEW BooksPerEditorial AS
Select E.EditorialName, COUNT(B.BookID) AS Books from Book B JOIN Editorial E ON B.EditorialID = E.EditorialID GROUP BY E.EditorialName, B.BookID;

GO
CREATE OR ALTER VIEW BooksPerLanguaje AS
Select L.LanguageName, COUNT(B.LanguageID) AS Amount from Book B RIGHT JOIN [Language] L ON B.LanguageID = L.LanguageID GROUP BY L.LanguageName, B.LanguageID;

GO
CREATE OR ALTER VIEW BooksPerGenre AS
Select G.GenreName, COUNT(B.GenreID) AS Books from Book B RIGHT JOIN Genre G ON B.GenreID = G.GenreID GROUP BY G.GenreName, B.GenreID;

GO
CREATE OR ALTER VIEW BooksPerAuthor AS
Select A.AuthorName, COUNT(B.AuthorID) AS Books from Book B RIGHT JOIN Author A ON B.AuthorID = A.AuthorID GROUP BY A.AuthorName, B.AuthorID;

GO
CREATE OR ALTER VIEW BooksPerGender AS
SELECT G.GenderName, COUNT(G.GenderName) AS Books FROM Book B JOIN Author A ON B.AuthorID = A.AuthorID JOIN Gender G ON A.GenderID = G.GenderID GROUP BY G.GenderName

GO
CREATE OR ALTER VIEW BooksPerCountry AS
SELECT C.CountryName, COUNT(C.CountryName) AS Books FROM Book B JOIN Editorial E ON B.EditorialID = E.EditorialID JOIN Country C ON E.CountryID = C.CountryID GROUP BY C.CountryName

GO
-- BooksSortByAuthorName
SELECT A.AuthorName, B.Title, E.EditorialName ,B.Pages AS AmountPages FROM Book B JOIN Author A ON B.AuthorID = A.AuthorID JOIN Editorial E ON B.EditorialID = E.EditorialID ORDER BY A.AuthorName

GO
-- BooksSortByPages 
SELECT A.AuthorName, B.Title, E.EditorialName ,B.Pages AS AmountPages FROM Book B JOIN Author A ON B.AuthorID = A.AuthorID JOIN Editorial E ON B.EditorialID = E.EditorialID ORDER BY B.Pages


GO
--BooksSortByGenre 
SELECT A.AuthorName, B.Title, G.GenreName FROM Book B JOIN Author A ON B.AuthorID = A.AuthorID JOIN Genre G ON B.GenreID = G.GenreID ORDER BY G.GenreName


