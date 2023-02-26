--Procedura koja na osnovu unetog Id Pozicije radnika i datuma vraca sve podatke iz tabele radnik
CREATE PROCEDURE ZaposleniNaPozicijiDatumaPoId @PozicijaId int, @PeriodRaspodele DateTime
AS
SELECT * FROM Radniks WHERE PozicijaId = @PozicijaId AND PreiodRaspodele = @PeriodRaspodele

--Test primer
EXEC ZaposleniNaPozicijiDatumaPoId @PozicijaId = 3, @PeriodRaspodele = '01-05-2021';

--Procedura koja na osnovu unetog naziva pozicije i datuma vraca ime, prezime, poziciju, datum i id
--radnika koji ispunjava zadat uslov
CREATE PROCEDURE ZaposleniNaPozicijiOdDatumaPoNazivu @Pozicija nvarchar(max), @PeriodRaspodele DateTime
AS
SELECT Radniks.IdRadnik, Radniks.Ime, Radniks.Prezime, Pozicijas.NazivPozicije, Radniks.PreiodRaspodele
FROM Radniks
LEFT JOIN Pozicijas ON Radniks.PozicijaId=Pozicijas.IdPozicija
WHERE NazivPozicije = @Pozicija AND PreiodRaspodele = @PeriodRaspodele

--Test primer
EXEC ZaposleniNaPozicijiOdDatumaPoNazivu @Pozicija = 'PROJEKTANT INFORMACIONIH SISTEMA I PROGRAMA', @PeriodRaspodele = '01-05-2021';