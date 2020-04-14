#!/bin/ksh

#set -A imagensId 

imagensId=($(docker images -q))
#declare -p imagesId

for i in ${imagensId[@]}; 
do 
	echo "imagem apagada - $i"; 
	docker image rmi -f $i;
done


#docker image rmi -f a02541febaa3 e10f5d83d335 8aa726ccd72b 302e57d9388a 5a9f1b19ace0 e04666ac5d54 4623332a7af6 3c36509a5c50 cfc8783c1a0e a75ac7163cc8 bb8bc59f3edf 962db046a1cb e1520ee8a41a a3562aa0b991
