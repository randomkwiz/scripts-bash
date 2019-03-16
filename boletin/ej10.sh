#!/bin/bash

#Pide 3 numeros y muestralos ordenados de forma ASCENDENTE

echo "Introduce un numero:"
read n1
echo "Introduce un numero:"
read n2
echo "Introduce un numero:"
read n3

	if [ $n3 -gt $n2 -a $n2 -gt $n1 ]
		then
			echo "El orden ascendente es: $n1, $n2, $n3"
	fi
	
	if [ $n1 -gt $n2 -a $n2 -gt $n3 ]
		then
			echo "El orden ascendente es: $n3, $n2, $n1"
	fi

	if [ $n2 -gt $n1 -a $n1 -gt $n3 ]
		then
			echo "El orden ascendente es: $n3, $n1, $n2"
	fi

	if [ $n2 -gt $n3 -a $n3 -gt $n1 ]
		then
			echo "El orden ascendente es: $n1, $n3, $n2"
	fi

	if [ $n1 -gt $n3 -a $n3 -gt $n2 ]
		then
			echo "El orden ascendente es: $n2, $n3, $n1"
	fi


