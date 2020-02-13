@ECHO OFF
SET  VECES=8
FOR /L %%i IN (1,1,%VECES%) do (
start brave.exe "http://localhost:8080/SetOutput?symbol=SAN.PA&feedtype=L2&output=4134&status=on" 
start brave.exe "http://localhost:8080/Register?symbol=SAN.PA&feedtype=L1"
start brave.exe "http://localhost:8080/GetLv1?symbol=SAN.PA" 
start brave.exe "http://localhost:8080/Register?symbol=SHP.CN&feedtype=L1"
start brave.exe "http://localhost:8080/SetOutput?symbol=SHP.CN&feedtype=L2&output=4134&status=on" 
start brave.exe "http://localhost:8080/GetLv1?symbol=SHP.CN" 
start brave.exe "http://localhost:8080/Register?symbol=ZVZZT.NQ&feedtype=L1"
start brave.exe "http://localhost:8080/SetOutput?symbol=ZVZZT.NQ&feedtype=L2&output=4134&status=on" 
start brave.exe "http://localhost:8080/GetLv1?symbol=ZVZZT.NQ" 
start brave.exe "http://localhost:8080/")
pause
