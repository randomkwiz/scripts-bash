#!/bin/bash


#ÁNGELA VÁZQUEZ DOMÍNGUEZ

#1 - Toma un número de entrada y calcula sus divisores

#Bucle for

echo Introduce un numero y te diré sus divisiores
read n

for (( i=1; i<=n; i++ ))
do
let div=n%i

	if [ $div -eq "0" ]
then
	echo "$i es divisor de $n"
	fi

done
