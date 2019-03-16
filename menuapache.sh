#!/bin/bash

#ÁNGELA VÁZQUEZ DOMÍNGUEZ

echo "	================================ MENU ================================	"
echo "		a) Arrancar el servicio (arrancar Apache)			"
echo "		p) Parar el servicio						"
echo "		r) Reiniciar el servicio					"
echo "		e) Comprueba el estado del servicio				"
echo "		u) Comprueba si existe el host virtual: virtualA		"
echo "		s) Salir del menú						"
echo "	======================================================================	"

read op

case $op in
 	a)
	sudo service apache2 start 1>/dev/null 2>&1
		if [ $? -eq 1 ]
			then
		echo "El servicio apache no se ha podido iniciar"
		else
		echo "Apache se inicio correctamente"
		fi
	;;
	p)
	sudo service apache2 stop 1>/dev/null 2>&1
		if [ $? -eq 1 ]
				then
			echo "El servicio apache no se ha podido parar"
			else
			echo "Apache se paro correctamente"
		fi
	;;
	r)
	sudo service apache2 restart 1>/dev/null 2>&1
		if [ $? -eq 1 ]
				then
			echo "El servicio apache no se ha podido reiniciar"
			else
			echo "Apache se reinicio correctamente"
		fi
	;;
	e)
	sudo service apache2 status 
		if [ $? -eq 1 ]
				then
			echo "El estado de apache no se ha podido ver"
		fi
	;;
	u)
	if [ -d /var/www/html/virtualA ];
		then
		echo "Sí, sí existe."
	else
		echo "No, no existe"
	fi
	;;
	s)
	exit
	;;
	*) echo "Opción no válida para el script"
esac
