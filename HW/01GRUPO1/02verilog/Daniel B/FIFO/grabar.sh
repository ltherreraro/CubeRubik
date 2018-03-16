#bin/bash

djtgcfg enum > temporal1.txt
Device=$(grep "Device" temporal1.txt ) 
Dev=$(echo $Device|cut -d ':' -f2| tr -d '[[:space:]]')
echo $Dev

djtgcfg init -d "$Dev" > temporal2.txt
Index=$(grep "Device 0" temporal2.txt ) 
Ix=$(echo $Index|cut -d ':' -f2| tr -d '[[:space:]]')
echo $Ix

echo "ingrese nombre del archivo"
read -i doc
sed  -i ´s/DEVICE          =/"$Ix"/g´ Makefile


make clean

make all

djtgcfg prog -d "$Dev" --index "$Ix" -f 

