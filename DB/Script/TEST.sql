USE LibraryBD
GO

/* Country */
EXEC InsertCountry 'TEST';
EXEC UpdateCountry 11,'TEST UPDATE';
EXEC DeleteCountry 11;
EXEC SelectCountry;

/* Gender */
EXEC InsertGender 'TEST';
EXEC UpdateGender 4,'TEST UPDATE';
EXEC DeleteGender 4;
EXEC SelectGender;

/* Genre */
EXEC InsertGenre 'TEST';
EXEC UpdateGenre 11,'TEST UPDATE';
EXEC DeleteGenre 11;
EXEC SelectGenre;

/* Author */
EXEC InsertAuthor 'TEST',1;
EXEC UpdateAuthor 11,'TEST UPDATE',2;
EXEC DeleteAuthor 11;
EXEC SelectAuthor;

/* Editorial */
EXEC InsertEditorial 'TEST',1;
EXEC UpdateEditorial 11,'TEST UPDATE',2;
EXEC DeleteEditorial 11;
EXEC SelectEditorial;

/* Language */
EXEC InsertLanguage 'TEST';
EXEC UpdateLanguage 11,'TEST UPDATE';
EXEC DeleteLanguage 11;
EXEC SelectLanguage;

/* Book */
EXEC InsertBook 229, '1869-11-29', 'TEST', 198247546, 10, 10, 1, 10, 2;
EXEC UpdateBook 11, 0, '2000-1-1', 'TEST UPDATE', 0, 0, 2, 2, 2, 2;
EXEC DeleteBook 11;
EXEC SelectBook;