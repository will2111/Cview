#!bin/bash/

if ! [ -x $(command -v cview) ] 
then
	if [ -f "~/.bash_aliases" ]
	then
		cat ./cview >> ~/.bash_aliases
	else
		touch ~/.bash_aliases
		cat ./cview >> ~/.bash_aliases
	fi
	
	source ~/.bash_aliases
	echo $'\e[1:37m'
	printf "\n\n%s\n" 'La commande cview a bien été installé'
	printf "\n%s\n\n" 'cat ~/.bash_aliases | grep cview'
	echo $'\e[1:37m'

else
	printf "\n\n%s\n\n" 'La commande cview est déjà installé'
fi


