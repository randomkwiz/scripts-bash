#!/bin/bash

############ ÁNGELA VÁZQUEZ DOMÍNGUEZ #######################

let bucle=1
while((bucle=1))
do
sleep 2s
clear
echo "###################INSTALACIÓN WEBMIN#####################"
echo "			1. Update & upgrade			"
echo "			2. Descargar versión 1.870		"
echo "			3. Instalar paquetes auxiliares		"
echo "			0. Salir				"
echo "##########################################################"

echo "Elige una opción (se recomienda seguir los pasos en orden 1-2-3): "
read op

case $op in 

	0)
	let bucle=0
	exit;;
	

	1)

	#Update y upgrade
	sudo apt-get update > /dev/null 2>&1 && sudo apt-get -y upgrade	> /dev/null 2>&1
	#Ponemos el apt-get upgrade con un -y para evitar la pregunta de si queremos continuar.
		if [ $? -eq 0 ]
		then
		echo "El sistema se actualizó correctamente. Prosiga con los siguientes pasos."

		else
		echo "Hubo un error. Inténtelo de nuevo"
		fi

	;;

	2)

	#Descargar versión 1.870
	sudo wget http://prdownloads.sourceforge.net/webadmin/webmin_1.870_all.deb > /dev/null 2>&1

		if [ $? -eq 0 ]
		then
		echo "El paquete se descargó de forma satisfactoria. Prosiga con los siguientes pasos."

		else
		echo "Hubo un error. Inténtelo de nuevo"
		fi	


	;;

	3)
	
	#Instalar paquetes auxiliares
	
	sudo apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions > /dev/null 2>&1


	if [ $? -eq 0 ]
	then
	echo "Genial, continuamos con la instalación de webmin final"
	sudo dpkg -i webmin_1.870_all.deb > /dev/null 2>&1


		if [ $? -eq 0 ]
		then
		echo "Webmin se instaló correctamente. Accede desde el navegador al servidor por el puerto 10000"

		else
		echo "Hubo un error. Inténtelo de nuevo"
		fi



	else
	echo "Hubo un error. Vuelva a intentarlo".
	fi

	;;


	*)
	echo "Error. Opción no contemplada. Pruebe otra vez."
	;;

esac
done
