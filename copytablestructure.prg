* Copy Table To a Structure

* Lem�solja egy t�bla szerkezet�t �s l�trehoz egy
* ugyanolyan szerkezet� �res t�bl�t

SET DEFAULT TO d:\domjan\fox\kondi\data

CLOSE DATABASES
OPEN DATABASE d:\domjan\fox\kondi\data\kondidb
USE berlet EXCLUSIVE IN 1
CLEAR
DISPLAY STRUCTURE
WAIT WINDOW 'Structure of the Original table' NOWAIT


* L�trehoz egy t�bl�t, amiben minden rekord
* az eredeti t�bla egy mez��nek felel meg
COPY STRUCTURE EXTENDED TO Temp
USE Temp
WAIT WINDOW 'The Temp table - 1 row per field in orders' NOWAIT
BROWSE


* L�trehoz egy t�bl�t, ami az erdeti �res m�solata
* CREATE BerletBackup FROM Temp
* USE BerletBackup
CREATE BerletDeleted FROM Temp
USE BerletDeleted
DISPLAY STRUCTURE
WAIT WINDOW 'Backup.dbf has the same structure as Orders' NOWAIT
USE


*DELETE FILE Temp.dbf
* DELETE FILE Backup.dbf