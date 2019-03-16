#!/bin/bash

#ÁNGELA VÁZQUEZ DOMÍNGUEZ

#3 - Toma un número de entrada y di si es primo o no

#Bucle for

echo "Introduce un numero y te diré si es primo"
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

