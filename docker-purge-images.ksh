#!/bin/ksh

function limpaImagens(){

	docker images

	imagensId=($(docker images -q))

	for i in ${imagensId[@]}; 
	do 
		echo "imagem apagada - $i"; 
		docker image rmi -f $i;
	done
}
