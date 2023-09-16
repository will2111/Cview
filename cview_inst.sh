#!bin/bash/

test="$(cat ~/.zshrc | grep cview)"

if [ -z "$test" ] 
then
	cat ./cview >> ~/.zshrc
	echo $'\e[1:37m'
	printf "\n\n%s\n" 'La commande cview a bien été installé'
	printf "\n%s\n\n" 'cat ~/.zshrc | grep cview'
	echo $'\e[1:37m'

else
	printf "\n\n%s\n\n" 'La commande cview est déjà installé'
fi


