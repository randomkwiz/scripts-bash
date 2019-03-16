#!/bin/bash

# Ángela Vázquez Domínguez 

let cont=0
let ipunicas=0
while read l
do
	listado=`echo $l | cut -d ' ' -f1`
	if [ $listado == 'lease' ]
	then
	ip=`echo $l | cut -d ' ' -f2`
	echo "$ip" >> listadodeips.txt
	let cont=$cont+1
	fi
done < dhcpd.leases

cat listadodeips.txt | sort | uniq > ipunicas.txt

while read p
do
let ipunicas=$ipunicas+1
done < ipunicas.txt


echo "Hay $ipunicas IPs unicas"
