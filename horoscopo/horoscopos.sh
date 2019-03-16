#!/bin/bash

########### ÁNGELA VÁZQUEZ DOMÍNGUEZ #############
#Fichero horóscopos

while read linea
do

day=`echo $linea | cut -d';' -f4 | cut -d'-' -f1`
month=`echo $linea | cut -d';' -f4 | cut -d'-' -f2`
#year=`echo $linea | cut -d';' -f4 | cut -d'-' -f3`
#El año no hace falta para saber el horóscopo


name=`echo $linea | cut -d';' -f3 | cut -d',' -f1`
lastname1=`echo $linea | cut -d';' -f3 | cut -d',' -f2`
lastname2=`echo $linea | cut -d';' -f3 | cut -d',' -f3`


if [ $day -ge 21 ] && [ $day -le 31 ] && [ $month -eq 1 ]
then
hor=Acuario
	echo Es Acuario
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 21 de enero al 19 de febrero" >> $hor.txt

elif [ $day -ge 1 ] && [ $day -le 19 ] && [ $month -eq 2 ]
then
hor=Acuario
	echo es Acuario
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 21 de enero al 19 de febrero" >> $hor.txt

elif [ $day -ge 20 ] && [ $day -le 29 ] && [ $month -eq 2 ]
then
echo Es Piscis
hor=Piscis
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 20 de febrero al 20 de marzo" >> $hor.txt

elif [ $day -ge 1 ] && [ $day -le 20 ] && [ $month -eq 3 ]
then
echo Es Piscis
hor=Piscis
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 20 de febrero al 20 de marzo" >> $hor.txt

elif [ $day -ge 21 ] && [ $day -le 31 ] && [ $month -eq 3 ]
then
echo Es Aries
hor=Aries
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 21 de marzo al 19 de abril" >> $hor.txt

elif [ $day -ge 1 ] && [ $day -le 19 ] && [ $month -eq 4 ]
then
echo Es Aries
hor=Aries
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 21 de marzo al 19 de abril" >> $hor.txt

elif [ $day -ge 20 ] && [ $day -le 30 ] && [ $month -eq 4 ]
then
echo Es Tauro
hor=Tauro
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 20 de abril al 20 de mayo" >> $hor.txt

elif [ $day -ge 1 ] && [ $day -le 20 ] && [ $month -eq 5 ]
then
echo Es Tauro
hor=Tauro
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 20 de abril al 20 de mayo" >> $hor.txt

elif [ $day -ge 21 ] && [ $day -le 31 ] && [ $month -eq 5 ]
then
echo Es Géminis
hor=Geminis
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 21 de mayo al 21 de junio" >> $hor.txt


elif [ $day -ge 1 ] && [ $day -le 21 ] && [ $month -eq 6 ]
then
echo Es Géminis
hor=Geminis
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 21 de mayo al 21 de junio" >> $hor.txt

elif [ $day -ge 22 ] && [ $day -le 30 ] && [ $month -eq 6 ]
then
echo Es Cáncer
hor=Cancer
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 22 de junio al 22 de julio" >> $hor.txt

elif [ $day -ge 1 ] && [ $day -le 22 ] && [ $month -eq 7 ]
then
echo Es Cáncer
hor=Cancer
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 22 de junio al 22 de julio" >> $hor.txt

elif [ $day -ge 23 ] && [ $day -le 31 ] && [ $month -eq 7 ]
then
echo Es Leo
hor=Leo
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 23 de julio al 23 de agosto" >> $hor.txt

elif [ $day -ge 1 ] && [ $day -le 23 ] && [ $month -eq 8 ]
then
echo Es Leo
hor=Leo
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 23 de julio al 23 de agosto" >> $hor.txt

elif [ $day -ge 24 ] && [ $day -le 31 ] && [ $month -eq 8 ]
then
echo Es Virgo
hor=Virgo
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 24 de agosto al 22 de septiembre" >> $hor.txt

elif [ $day -ge 1 ] && [ $day -le 22 ] && [ $month -eq 9 ]
then
echo Es Virgo
hor=Virgo
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 24 de agosto al 22 de septiembre" >> $hor.txt

elif [ $day -ge 23 ] && [ $day -le 30 ] && [ $month -eq 9 ]
then
echo Es Libra
hor=Libra
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 23 de septiembre al 22 de octubre" >> $hor.txt

elif [ $day -ge 1 ] && [ $day -le 22 ] && [ $month -eq 10 ]
then
echo Es Libra
hor=Libra
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 23 de septiembre al 22 de octubre" >> $hor.txt

elif [ $day -ge 23 ] && [ $day -le 31 ] && [ $month -eq 10 ]
then
echo Es Escorpio
hor=Escorpio
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 23 de octubre al 22 de noviembre" >> $hor.txt

elif [ $day -ge 1 ] && [ $day -le 22 ] && [ $month -eq 11 ]
then
echo Es Escorpio
hor=Escorpio
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 23 de octubre al 22 de noviembre" >> $hor.txt

elif [ $day -ge 23 ] && [ $day -le 30 ] && [ $month -eq 11 ]
then
echo Es Sagitario
hor=Sagitario
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 23 de noviembre al 21 de diciembre" >> $hor.txt


elif [ $day -ge 1 ] && [ $day -le 21 ] && [ $month -eq 12 ]
then
echo Es Sagitario
hor=Sagitario
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 23 de noviembre al 21 de diciembre" >> $hor.txt

elif [ $day -ge 22 ] && [ $day -le 31 ] && [ $month -eq 12 ]
then
echo Es Capricornio
hor=Capricornio
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 22 de diciembre al 31 de enero" >> $hor.txt

elif [ $day -ge 1 ] && [ $day -le 31 ] && [ $month -eq 1 ]
then
echo Es Capricornio
hor=Capricornio
echo "$name $lastname1 $lastname2 es $hor" >> $hor.txt
echo "Los $hor van del 22 de diciembre al 31 de enero" >> $hor.txt

else
echo "Error. Contacta con el administrador del sistema."











fi
done < usuarios.txt
