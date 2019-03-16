#!/bin/bash

#ÁNGELA VÁZQUEZ DOMÍNGUEZ

#2 - Toma un número de entrada y calcula su factorial

#Bucle for

echo "Introduce un numero y te diré su factorial"
read n

fact=1

for (( i=1; i<=n; i++ ))
do
	let fact=$i*$fact
done
	echo "El factorial de $n es $fact"
