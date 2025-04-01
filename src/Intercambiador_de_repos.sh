#!/bin/bash
#Nombre: Intercambiador de repositorios
#Que hace: Renombra directorios segun sea el caso para usar ya sea el repo local o el repo en github 
REPOLOCAL='.gitLOCAL'
REPOHUB='.gitHUB'
REPO='.git'
SW=1

if [ -d $REPOLOCAL ] && [ $SW -eq 1 ]
then
   echo "LOCAL"
   mv $REPO $REPOHUB
   mv $REPOLOCAL $REPO
   SW=0
fi 
if [ -d $REPOHUB ] && [ $SW -eq 1 ]
then
   echo "REMOTO"
   mv $REPO $REPOLOCAL
   mv $REPOHUB $REPO
   SW=0
fi 
exit 0
