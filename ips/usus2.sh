#!/bin/bash

# Ángela Vázquez Domínguez 

#!/bin/bash
let cont=0
let ipunicas=0

#while read linea
#do
	cat dhcpd.leases | grep lease | cut -d ' ' -f 2 | sort -u >>ipunicaconGREP.txt
	

#done < dhcpd.leases


nlineas=`cat ipunicaconGREP.txt | wc -l`

echo Hay $nlineas IP únicas
