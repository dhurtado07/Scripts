@echo off

echo ------------Conectandose al Servidor-------------

"C:\Program Files (x86)\PuTTY\putty.exe" -ssh USER@IP 22 -pw PASSWORD -m "%~d0%~p0comandos.sh" -t

exit

