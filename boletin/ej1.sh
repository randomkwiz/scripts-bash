#! /bin/bash

#tomar 3 números como parámetros de entrada y :
#- calcular y visualizar la suma el producto y la resta.
#- mostrar el número de parámetros
#- mostrar todos los paŕametros


let suma=$1+$2+$3
let resta=$1-$2-$3
let producto=$1*$2*$3

echo "La suma de estos números es $suma"
echo "La resta consecutiva de estos números es: $resta"
echo "El producto de estos números es: $producto"
echo "Los parámetros que has introducido son $1, $2 y $3".
echo "El total de números que has introducido es: $#"

# ÁNGELA VÁZQUEZ DOMÍNGUEZ

