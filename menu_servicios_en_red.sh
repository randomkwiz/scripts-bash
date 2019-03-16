#!/bin/bash

############ ÁNGELA VÁZQUEZ DOMÍNGUEZ #################
let bucle=1

while (( $bucle != 0 ))
do
echo "##############################################################################"
echo "###				   MENÚ					####"
echo "##############################################################################"
echo "###			1. SERVICIO WEB					####"
echo "###			2. SERVICIO SSH					####"
echo "###			3. SERVICIO FTP					####"
echo "###			4. SERVICIO DHCP				####"
echo "###			5. SERVICIO DNS					####"
echo "###			0. SALIR					####"
echo "##############################################################################"

echo "Elije opción: "
read op


case $op in 

	1)
	clear
	echo "##############################################################################"
	echo "###			1. SERVICIO WEB					####"
	echo "##############################################################################"
	echo "###			a. ARRANQUE					####"
	echo "###			b. PARADA					####"
	echo "###			c. REINICIO					####"
	echo "###			d. VER ESTADO					####"
	echo "###			s. VOLVER AL MENÚ PRINCIPAL			####"
	echo "##############################################################################"

	echo "Eligue opción: "
	read opWEB

		case $opWEB in

		a)
		
		sudo service apache2 start
	
		if [ $? -eq 0 ]
		then
		echo "El servicio se inició con éxito"
		else
		echo "Algo falló. Ponte en contacto con el administrador."
		fi

		;;
		b)

		sudo service apache2 stop
		if [ $? -eq 0 ]
		then
		echo "El servicio se paró con éxito"
		else
		echo "Algo falló. Ponte en contacto con el administrador."
		fi

		;;
		c)


		sudo service apache2 restart
		if [ $? -eq 0 ]
		then
		echo "El servicio se reinició con éxito"
		else
		echo "Algo falló. Ponte en contacto con el administrador."
		fi

		;;
		d)


		sudo service apache2 status


		;;
		s)
		echo Volviendo al menú principal
		sleep 1s
		./menuSERREserviciosANGELA.sh
		;;
		*) echo "Error. Opción no contemplada. Respeta las minúsculas y mayúsculas."
		;;

		esac


	;;

	2)
	clear
	#echo Entra en 2

	echo "##############################################################################"
	echo "###			2. SERVICIO SSH					####"
	echo "##############################################################################"
	echo "###			a. ARRANQUE					####"
	echo "###			b. PARADA					####"
	echo "###			c. REINICIO					####"
	echo "###			d. CONECTARSE AL SERVIDOR DE CLASE		####"
	echo "###			s. VOLVER AL MENÚ PRINCIPAL			####"
	echo "##############################################################################"

	echo "Eligue opción: "
	read opSSH

		case $opSSH in

		a)
		
		sudo service ssh start
	
		if [ $? -eq 0 ]
		then
		echo "El servicio se inició con éxito"
		else
		echo "Algo falló. Ponte en contacto con el administrador."
		fi

		;;
		b)

		sudo service ssh stop
		if [ $? -eq 0 ]
		then
		echo "El servicio se paró con éxito"
		else
		echo "Algo falló. Ponte en contacto con el administrador."
		fi

		;;
		c)


		sudo service ssh restart
		if [ $? -eq 0 ]
		then
		echo "El servicio se reinició con éxito"
		else
		echo "Algo falló. Ponte en contacto con el administrador."
		fi

		;;
		d)


		ssh usuario@172.22.64.100


		;;
		s)
		echo Volviendo al menú principal
		sleep 1s
		./menuSERREserviciosANGELA.sh
		;;
		*) echo "Error. Opción no contemplada. Respeta las minúsculas y mayúsculas."
		;;

		esac


	;;

	3)
	clear
	#echo Entra en 3


	echo "##############################################################################"
	echo "###			3. SERVICIO FTP					####"
	echo "##############################################################################"
	echo "###			a. ARRANQUE					####"
	echo "###			b. PARADA					####"
	echo "###			c. REINICIO					####"
	echo "###			d. VER ESTADO					####"
	echo "###			s. VOLVER AL MENÚ PRINCIPAL			####"
	echo "##############################################################################"

	echo "Eligue opción: "
	read opFTP

		case $opFTP in

		a)
		
		
		sudo service proftpd start
	
		if [ $? -eq 0 ]
		then
		echo "El servicio se inició con éxito"
		else
		echo "Algo falló. Ponte en contacto con el administrador."
		fi

		;;
		b)

		sudo service proftpd stop
		if [ $? -eq 0 ]
		then
		echo "El servicio se paró con éxito"
		else
		echo "Algo falló. Ponte en contacto con el administrador."
		fi

		;;
		c)


		sudo service proftpd restart
		if [ $? -eq 0 ]
		then
		echo "El servicio se reinició con éxito"
		else
		echo "Algo falló. Ponte en contacto con el administrador."
		fi

		;;
		d)


		sudo service proftpd status


		;;
		s)
		echo Volviendo al menú principal
		sleep 1s
		./menuSERREserviciosANGELA.sh
		;;
		*) echo "Error. Opción no contemplada. Respeta las minúsculas y mayúsculas."
		;;

		esac
	;;

	4)
	clear
	echo "##############################################################################"
	echo "###			4. SERVICIO DHCP				####"
	echo "##############################################################################"
	echo "###			a. ARRANQUE					####"
	echo "###			b. PARADA					####"
	echo "###			c. REINICIO					####"
	echo "###			d. VER ESTADO					####"
	echo "###			s. VOLVER AL MENÚ PRINCIPAL			####"
	echo "##############################################################################"

	echo "Eligue opción: "
	read opDHCP

		case $opDHCP in

		a)
		
		
		sudo service isc-dhcp-server start
	
		if [ $? -eq 0 ]
		then
		echo "El servicio se inició con éxito"
		else
		echo "Algo falló. Ponte en contacto con el administrador."
		fi

		;;
		b)

		sudo service isc-dhcp-server stop
		if [ $? -eq 0 ]
		then
		echo "El servicio se paró con éxito"
		else
		echo "Algo falló. Ponte en contacto con el administrador."
		fi

		;;
		c)


		sudo service isc-dhcp-server restart
		if [ $? -eq 0 ]
		then
		echo "El servicio se reinició con éxito"
		else
		echo "Algo falló. Ponte en contacto con el administrador."
		fi

		;;
		d)


		sudo service isc-dhcp-server status


		;;
		s)
		echo Volviendo al menú principal
		sleep 1s
		./menuSERREserviciosANGELA.sh
		;;
		*) echo "Error. Opción no contemplada. Respeta las minúsculas y mayúsculas."
		;;

		esac


	;;

	5)
	clear
	echo "##############################################################################"
	echo "###			5. SERVICIO DNS					####"
	echo "##############################################################################"
	echo "###			a. ARRANQUE					####"
	echo "###			b. PARADA					####"
	echo "###			c. REINICIO					####"
	echo "###			d. VER ESTADO					####"
	echo "###			s. VOLVER AL MENÚ PRINCIPAL			####"
	echo "##############################################################################"

	echo "Eligue opción: "
	read opDNS

		case $opDNS in

			a)
		
		sudo service bind9 start
	
		if [ $? -eq 0 ]
		then
		echo "El servicio se inició con éxito"
		else
		echo "Algo falló. Ponte en contacto con el administrador."
		fi

		;;
		b)

		sudo service bind9 stop
		if [ $? -eq 0 ]
		then
		echo "El servicio se paró con éxito"
		else
		echo "Algo falló. Ponte en contacto con el administrador."
		fi

		;;
		c)


		sudo service bind9 restart
		if [ $? -eq 0 ]
		then
		echo "El servicio se reinició con éxito"
		else
		echo "Algo falló. Ponte en contacto con el administrador."
		fi

		;;
		d)


		sudo service bind9 status


		;;
		s)
		echo Volviendo al menú principal
		sleep 1s
		./menuSERREserviciosANGELA.sh
		;;
		*) echo "Error. Opción no contemplada. Respeta las minúsculas y mayúsculas."
		;;

		esac



	;;

	0) 
	clear
	let bucle=0
	echo Adiós
	exit

	;;
		
	*)
	echo "Error, opción no contemplada"
	;;

esac 
done



##################### ÁNGELA VÁZQUEZ DOMÍNGUEZ ####################################
