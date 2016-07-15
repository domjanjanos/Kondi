* Copy Table To a Structure

* Lemásolja egy tábla szerkezetét és létrehoz egy
* ugyanolyan szerkezetû üres táblát

SET DEFAULT TO d:\domjan\fox\kondi\data

CLOSE DATABASES
OPEN DATABASE d:\domjan\fox\kondi\data\kondidb
USE berlet EXCLUSIVE IN 1
CLEAR
DISPLAY STRUCTURE
WAIT WINDOW 'Structure of the Original table' NOWAIT


* Létrehoz egy táblát, amiben minden rekord
* az eredeti tábla egy mezõének felel meg
COPY STRUCTURE EXTENDED TO Temp
USE Temp
WAIT WINDOW 'The Temp table - 1 row per field in orders' NOWAIT
BROWSE


* Létrehoz egy táblát, ami az erdeti üres másolata
* CREATE BerletBackup FROM Temp
* USE BerletBackup
CREATE BerletDeleted FROM Temp
USE BerletDeleted
DISPLAY STRUCTURE
WAIT WINDOW 'Backup.dbf has the same structure as Orders' NOWAIT
USE


*DELETE FILE Temp.dbf
* DELETE FILE Backup.dbf