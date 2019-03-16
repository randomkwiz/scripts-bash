#!/bin/bash

#ÁNGELA VÁZQUEZ DOMÍNGUEZ

#4 - Lee numeros de entrada y almacena en un fichero llamado POS los positivos y en NEG los negativos. El script acaba con 0, y no debe almacenarse

#Bucle for

echo "Introduce un numero"
read n
let sol=1
for (( i=2; i<n; i++ ))
do
	let resto=n%i

	if [ $resto -eq 0 ]
	then
		let sol=0
	fi

done

	if [ $sol -eq 0 ]
		then
		echo "No es primo"
	elif [ $sol -eq 1 ]
		then
		echo "Es primo"
	else
		echo "idk bro"
	fi

