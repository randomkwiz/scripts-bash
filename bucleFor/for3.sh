#!/bin/bash


#ÁNGELA VÁZQUEZ DOMÍNGUEZ

#3 - Visualizar los 10 primeros números pares.

#Bucle for

for (( i=0; i<20; i++ ))
do
let div=i%2

	if [ $div -eq "0" ]
then
	echo "$i"
	fi

done
