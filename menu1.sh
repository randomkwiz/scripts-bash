#!/bin/bash

#ÁNGELA VÁZQUEZ DOMÍNGUEZ
echo Introduce el nombre de un archivo
read x

sleep 1s

echo "	================================ MENU ================================	"
echo "		1- Comprobar si el archivo está en el directorio raiz		"
echo "		2- Comprobar si está en tu directorio de trabajo		"
echo "		3- Comprobar si es archivo o directorio				"
echo "	======================================================================	"

echo "Elige una opcion"
read a

	if [ $a -eq 1 ]
		then
			if [ -d /"$x" ]
				then
				echo "El archivo está en el directorio raiz"
			else
				echo "El archivo no está en el directorio raiz"
			
			fi
			
	fi

	if [ $a -eq 2 ]
		then
		
			if [ -e ./"$x" ]
				then
				echo "El archivo está en mi directorio de trabajo"
			else
				echo "El archivo no está en mi directorio de trabajo"
			fi
	fi

	if [ $a -eq 3 ]
		then
			if [ -d "$x" ]
				then
					echo "Es un directorio"
			exit 0
			fi

			if [ -f "$x" ]
				then
					echo "Es un fichero"
			
			else
				echo "No existe"
			fi
	
	elif [ $a != 1 -a $a != 2 -a $a != 3 ]
		then
		echo "Esa opcion no esta contemplada"

	fi



















