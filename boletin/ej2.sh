#!/bin/bash


#leer dos números y escribirlos en orden asdendente

echo "Introduce un número"
read numero1
echo "Introduce otro número"
read numero2

sleep 1s

if [ $numero1 -gt $numero2 ]
then
echo "El numero $numero2 es menor que $numero1"
fi

if [ $numero1 -eq $numero2 ]
then
echo "¡Ambos números son iguales!"
fi

if [ $numero1 -lt $numero2 ]
then
echo "El número $numero1 es menor que $numero2"
fi

# ÁNGELA VÁZQUEZ DOMÍNGUEZ
