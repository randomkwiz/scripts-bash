#!/bin/bash

#Script que lea un nombre de usuario, lo busque en el fichero USUARIOS y si lo encuentra lo borre.

#ÁNGELA VÁZQUEZ DOMÍNGUEZ

echo Introduce nombre de usuario a borrar
read usuario

while read LINEA
do

	if [[ $usuario != "$LINEA" ]]
	then
	
	echo $LINEA >> USUARIOS.tmp

	fi

done < USUARIOS


mv USUARIOS.tmp USUARIOS
