#!/bin/bash

#toma un nombre de fichero de entrada y te diga si es fichero o directorio.
if [ -d "$1" ]
then
echo "Es un directorio"
exit 0
fi

if [ -f "$1" ]
then 
echo "Es un fichero"
else
echo "No existe"
fi

# ÁNGELA VÁZQUEZ DOMÍNGUEZ
