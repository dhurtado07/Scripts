#!/bin/bash
#------------------------ Servers-----------------
#AlertSrv  ConnSrv  DispSrv  FeedSrv  HDEOD  InitSrv  OPCSrv  ScriptSrv  TXSrv1
#ConsSrv  EBSrv    GWSrv    HDSrv  InitSrv2  MBSrv   OSMSrv  SPSrv      TXSrv2
#example version: Inka-0.8
server_name=AlertSrv
version=Kusi-7.7
pwd
echo +++ Modificando fichero ini
perl -p -i -e "s["v_$server_name".*]["v_$server_name=$version"]g" /CASA/QA/NCSA/PPro8/bin/QA_env_settings.ini
#cd ..
sleep 5
echo +++ Deteniendo el servidor
./envRun.sh stop.sh $server_name
sleep 5
echo +++ Actualizando el servidor
./envRun.sh update.sh $server_name
sleep 5
echo +++ Reiniciando el servidor
./envRun.sh restart.sh $server_name
echo +++ Operacion realizada con exito :)
echo ---- Version de servidores --------
grep -r -i v_ QA_env_settings.ini
read -p "Press enter" 
