#!/bin/bash
#création des fichiers 
if [ -z $1 ] #test que l'utilisateur n'a pas entré un nom de projet(chaine vide)
then
echo "Expected arguments, please check the help : initdev –help"
echo 1 
else
if [ $1 == -help ] #on teste si l'utilisateur veut voir le help
then echo "initdev :est une commande qui permet de créer un répertoire contenant 3 fichiers main,Makefile et LICENSE ."
echo "Syntax : initdev nom_du_projet."
echo "args : nom_du_projet :le nom de votre répertoire,il doit etre non vide."
echo "author : IRATNI Asmahene , e-mail:iratni.asmahene@gmail.com" 
else
mkdir $1 #création du repertoire
echo "Le Nom du projet est : $1 "
cd $1
touch main #création du fichier main
touch LICENSE
touch Makefile
echo 0
if [ $2 == c ] 
then mv main main.$2
cp ~/mysialhan/initdev/sources/main.c main.$2
elif [ $2 == ccp ] || [ $2 == c++ ]
then mv main main.$2
cp ~/mysialhan/initdev/sources/main.cpp main.$2
echo 0
elif [ $2 == py ]
then mv main main.$2
cp ~/mysialhan/initdev/sources/main.py main.$2
echo 0
elif [ $2 == latex ]
then mv main main.$2
cp ~/mysialhan/initdev/sources/latexMin.tex main.$2
echo 0
elif [ $2 == beamer ]
then mv main main .$2
cp ~/mysialhan/initdev/sources/beamer.tex main.$2
echo 0
else echo "Uknown arguments, please check the help : initdev –help"
fi
fi
fi
