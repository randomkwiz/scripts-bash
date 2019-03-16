#!/bin/bash

# Ángela Vázquez Domínguez 


for i in `cat USUARIOS`
do
if id -u "$i" >/dev/null 2>&1;
then 
echo "El user $i existe" 
else 
echo "El user $i no existe" 
fi
done
