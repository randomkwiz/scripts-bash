#!/bin/bash

#Ángela Vázquez Domínguez

#1.- Toma un número de entrada y calcula sus divisores.

echo "Introduce un numero"
read n
let cont=0
echo "Los divisores de $n son: "
while [ $cont -le $n ]
do	
	let cont=$cont+1
	let resto=$n%$cont

	if [ $resto -eq "0" ]

		then
		echo "$cont"
		
	fi
done
