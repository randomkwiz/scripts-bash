#!/bin/bash

#leer dos números y escribirlos en orden desdendente

echo "Introduce un número"
read numero1
echo "Introduce otro número"
read numero2

sleep 1s

echo "El orden descendente de los números es:"

if [ $numero1 -gt $numero2 ]
	then
	echo "$numero1,$numero2"
fi

if [ $numero1 -eq $numero2 ]
	then
	echo "¡Ambos números son iguales!"
fi

if [ $numero1 -lt $numero2 ]
	then
	echo "$numero2, $numero1"
fi

# ÁNGELA VÁZQUEZ DOMÍNGUEZ
