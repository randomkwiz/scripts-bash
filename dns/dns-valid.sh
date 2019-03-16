#!/bin/bash

############ ÁNGELA VÁZQUEZ DOMÍNGUEZ ###############

#script para leer nombres de IPs y actualizar el servicio DNS. Suponemos que le damos IPs válidas.

function validarIP()
#Esta función sólo la usaré para validar los octetos número dos, tres y cuatro.
{

if [ $1 -le 255 ] && [ $1 -ge 0 ]
	then
	return 1
else
	
	return 0	



fi
}


function validar_Primer_Octeto(){
#Esta función valida el primer octeto. La diferencia radica en que el primer octeto NO puede ser cero (0). Los demás octetos sí pueden serlo.

if [ $1 -le 255 ] && [ $1 -gt 0 ]
	then
	return 1
else
	
	return 0	

fi


}



echo "¿Cuántos registros quieres añadir?"
read nRegistros

for ((i=0;i<$nRegistros;i++))
do


echo "Introduce IP"
read ip

if [[ "$ip" = [1-9]*.[0-9]*.[0-9]* ]]
then
	




echo "Introduce el nombre con el que quieres reconocer a esa IP"
read nombre


primerOcteto=`echo $ip | cut -d. -f1`
segundoOcteto=`echo $ip | cut -d. -f2`
tercerOcteto=`echo $ip | cut -d. -f3`
cuartoOcteto=`echo $ip | cut -d. -f4`



validar_Primer_Octeto $primerOcteto

if [ $? -eq 1 ]
then
	let v_primerOct=1

else
	let v_primerOct=0
fi


validarIP $segundoOcteto

if [ $? -eq 1 ]
then
	let v_segOct=1

else
	let v_segOct=0
fi


validarIP $tercerOcteto

if [ $? -eq 1 ]
then
	let v_tercerOct=1

else
	let v_tercerOct=0
fi

validarIP $cuartoOcteto

if [ $? -eq 1 ]
then
	let v_cuartoOct=1

else
	let v_cuartoOct=0
fi




if [ $v_primerOct -eq 1 ] && [ $v_segOct -eq 1 ] && [ $v_tercerOct -eq 1 ] && [ $v_cuartoOct -eq 1 ] 
	then
	tabu=`echo -e ' \t'`
	sudo echo "$nombre.$tabu IN$tabu A$tabu$ip" >> sudo /etc/bind/db.local
	echo Registro introducido correctamente.
else
	echo Error. IP no válida.
fi




else

echo Error. IP no válida.

fi

done
