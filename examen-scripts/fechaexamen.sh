#!/bin/bash

#EJERCICIO FECHA - ÁNGELA VÁZQUEZ DOMÍNGUEZ
#INTRODUCIR UNA FECHA Y QUE TE DIGA SI ES VÁLIDA O NO, MOSTRÁNDOTE LA FECHA EN FORMATO DD/MM/AAAA
#ENVIADO POR CORREO ELECRONICO POR LA DIFICULTAD DE PASARLO A PAPEL SIN EQUIVOCARME

echo "Introduce el día"
read D
echo "Introduce el mes"
read M
echo "Introduce el año"
read A

let res=0
#De base, suponemos que las fechas NO son válidas, y ahora voy a especificar cuándo SÍ son válidas

if [ $D -le 31 ] && [ $M -le 12 ] && [ $A -gt 0 ] && [ $D -ge 1 ] && [ $M -ge 1 ]
then
#Ahora vamos a especificar el formato permitido para los DÍAS
	if [ $D -le 30 ] && [ $M -ne 2 ]
		then
		let res=1
		#Si el día es 30 y el mes NO es febrero, siempre será válido
	elif [ $D -eq 31 ] && [ $M -eq 1 ] || [ $M -eq 3 ] || [ $M -eq 5 ] || [ $M -eq 7 ] || [ $M -eq 8 ] || [ $M -eq 10 ] || [ $M -eq 12 ]
		then
		let res=1
		#Si el día es 31 sólo será válido en los meses 1,3,5,7,8,10 y 12.
	fi
#Ahora vamos con el mes febrero

	if [ $M -eq 2 ] && [ $D -le 28 ] && [ $D -ge 1 ]
	then
	let res=1
	#Si el mes es febrero y el día es menor o igual a 28 pero mayor o igual a 1, siempre será válido.
	
	elif [ $M -eq 2 ] && [ $D -eq 29 ] && [ $D -ge 1 ]
	then
	let esDivisordeCuatrocientos=$A%400	
	let esDivisordeCien=$A%100
	let esDivisordeCuatro=$A%4
		if [ $esDivisordeCuatrocientos -eq 0 ] || [ $esDivisordeCien -ne 0 ] && [ $esDivisordeCuatro -eq 0 ]

			then
		let res=1

	#La regla para que un año sea bisiesto es que, o bien sea divisor de 400 (esto es una regla), o bien sea divisor de 4 pero no de 100 (esto es otra regla).

		fi

	fi


else
let res=0
fi


if [ $res -eq 1 ]
then
	echo "Formato válido, tu fecha es $D/$M/$A"
elif [ $res -eq 0 ]
then
	echo "Tu fecha $D/$M/$A no es válida"
else
	echo "Error"
fi
