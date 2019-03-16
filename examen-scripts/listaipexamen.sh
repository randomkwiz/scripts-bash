#!/bin/bash

#Lista de IPs 

#Ángela Vázquez Domínguez

#LISTAIP sólo pone el primer octeto, clasifica en clases A, B y C

for i in `cat /etc/LISTAIP`
do

	if [ $i -ge 0 ] && [ $i -le 255 ] && [ $i -ne 127 ]
#Esto lo hago ya que las IP que empiezan por 127 son de testeo por ejemplo la loopback 127.0.0.1
	then
		if [ $i -le 126 ]
		then
			echo $i >> CLASEA
		elif [ $i -le 191 ] 
	
		then
			echo $i >> CLASEB

		elif [ $i -le 223 ]
		then
			echo $i >> CLASEC
		fi
	fi

done

