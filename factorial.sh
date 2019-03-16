#!/bin/bash

#Ángela Vázquez Domínguez

#2.- Toma un número de entrada  y  calcula su factorial.

echo "Dime un numero"
read n
let cont=1
let factorial=1
while [ $cont -ne $n ]
do
	let factorial=$factorial*$cont
	let cont=$cont+1
done
echo "El factorial de $n es $factorial"

