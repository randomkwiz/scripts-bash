#!/bin/bash

# Ángela Vázquez Domínguez 

permisosfichero=`ls -l $1 | cut -d ' ' -f1`

permisosdeUsuarioUno=`echo $permisosfichero | cut -c2`
permisosdeUsuarioDos=`echo $permisosfichero | cut -c3`
permisosdeUsuarioTres=`echo $permisosfichero | cut -c4`


permisosdeGrupoUno=`echo $permisosfichero | cut -c5`
permisosdeGrupoDos=`echo $permisosfichero | cut -c6`
permisosdeGrupoTres=`echo $permisosfichero | cut -c7`


permisosdeOtroUno=`echo $permisosfichero | cut -c8`
permisosdeOtroDos=`echo $permisosfichero | cut -c9`
permisosdeOtroTres=`echo $permisosfichero | cut -c10`

echo El archivo fich tiene los siguientes permisos:
echo Propietario: $permisosdeUsuarioUno, $permisosdeUsuarioDos, $permisosdeUsuarioTres 
echo Grupo: $permisosdeGrupoUno, $permisosdeGrupoDos, $permisosdeGrupoTres
echo Otros:  $permisosdeOtroUno, $permisosdeOtroDos, $permisosdeOtroTres

echo "Un guion (-) significa que no posee el permiso que iría en ese lugar"




#-rwxrwxr-x
