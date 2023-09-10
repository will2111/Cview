#!bin/bash/

test="$(cat ~/.bash_aliases | grep cview)"

if [ -z "$test" ] 
then
	if [ ! -f "~/.bash_aliases" ]
	then
		touch ~/.bash_aliases
	fi
	
	cat ./cview >> ~/.bash_aliases
	echo $'\e[1:37m'
	printf "\n\n%s\n" 'La commande cview a bien été installé'
	printf "\n%s\n\n" 'cat ~/.bash_aliases | grep cview'
	echo $'\e[1:37m'

else
	printf "\n\n%s\n\n" 'La commande cview est déjà installé'
fi


