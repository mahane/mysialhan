#!/bin/bash
if [  ! -e "/home/`whoami`/.initdev" ] # on test l'existance d'un répertoire déja nommé .initdev
then
mkdir /home/`whoami`/.initdev #on crée le repertoire caché initdev
cp -r /home/`whoami`/mysialhan/* /home/`whoami`/.initdev #on copie les fichiers du dépot au nouveau répertoire
else 
echo $? #si le repertoire existe déja on affiche 1
fi
export PATH=$PATH:/home/usr/mysialhan/initdev #on exporte la variable PATH pour executer initdev comme commmande
echo 'export PATH=$PATH:/home/usr/mysialhan' >> /home/usr/.bashrc #on copie dans bashrc pour que la commande devient pérmanente
