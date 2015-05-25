CREATE TRIGGER modyfikacja
ON pracownik
AFTER INSERT, UPDATE,DELETE
AS
	print 'liczba zmodyfikowanych wierszy: ' + str(@@rowcount)	
	print 'Wiersze usuniete:'
	select * from deleted
	print 'Wiersze dodane:'
	select * from inserted