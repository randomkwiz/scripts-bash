#!/bin/bash

############ ÁNGELA VÁZQUEZ DOMÍNGUEZ ###############

#script para leer nombres de IPs y actualizar el servicio DNS. Suponemos que le damos IPs válidas.


echo "¿Cuántos registros quieres añadir?"
read nRegistros

for ((i=0;i<$nRegistros;i++))
do


echo "Introduce IP"
read ip

echo "Introduce el nombre con el que quieres reconocer a esa IP"
read nombre

tabu=`echo -e ' \t'`
echo "$nombre$tabu IN$tabu A$tabu$ip" >> /etc/bind/db.local



done
