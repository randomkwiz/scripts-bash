#!/bin/bash


#leer 2 números y te diga si son positivos o negativos (el cero es positivo)

echo "Introduce un número"
read num1
echo "Introduce otro número"
read num2

if [ $num1 -ge 0 ]
then
echo "$num1 es un número positivo"
else
echo "$num1 es un número negativo"
fi

if [ $num2 -ge 0 ]
then
echo "$num2 es un número positivo"
else
echo "$num2 es un número negativo"
fi

# ÁNGELA VÁZQUEZ DOMÍNGUEZ
