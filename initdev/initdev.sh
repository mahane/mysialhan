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
echo "#include <stdio.h>
#include <stdlib.h>

int main()
{
    printf("Hello world!\n");
    return 0;
}" >> main.$2
elif [ $2 == ccp ] || [ $2 == c++ ]
then mv main main.$2
echo "#include <iostream>
using namespace std;
int main()
{
    cout << "Hello world!" << endl;
    return 0;
}" >> main.$2
echo 0
elif [ $2 == py ]
then mv main main.$2
echo 0
elif [ $2 == latex ]
then mv main main.$2
echo "\documentclass{article}
    % General document formatting
    \usepackage[margin=0.7in]{geometry}
    \usepackage[parfill]{parskip}
    \usepackage[utf8]{inputenc}
    
    % Related to math
    \usepackage{amsmath,amssymb,amsfonts,amsthm}

\begin{document}

Name, date, Exercise X

\section*{Part a}

Put your answer to part a here

\section*{Part b}

etc

\end{document}">> main.$2
echo 0
elif [ $2 == beamer ]
then mv main main .$2
echo "

% This text is proprietary.
% It's a part of presentation made by myself.
% It may not used commercial.
% The noncommercial use such as private and study is free
% Sep. 2005 
% Author: Sascha Frank 
% University Freiburg 
% www.informatik.uni-freiburg.de/~frank/


\documentclass{beamer}
\begin{document}
\title{Simple Beamer Class}   
\author{Sascha Frank} 
\date{\today} 

\frame{\titlepage} 

\frame{\frametitle{Table of contents}\tableofcontents} 


\section{Section no.1} 
\frame{\frametitle{Title} 
Each frame should have a title.
}
\subsection{Subsection no.1.1  }
\frame{ 
Without title somethink is missing. 
}


\section{Section no. 2} 
\subsection{Lists I}
\frame{\frametitle{unnumbered lists}
\begin{itemize}
\item Introduction to  \LaTeX  
\item Course 2 
\item Termpapers and presentations with \LaTeX 
\item Beamer class
\end{itemize} 
}

\frame{\frametitle{lists with pause}
\begin{itemize}
\item Introduction to  \LaTeX \pause 
\item Course 2 \pause 
\item Termpapers and presentations with \LaTeX \pause 
\item Beamer class
\end{itemize} 
}

\subsection{Lists II}
\frame{\frametitle{numbered lists}
\begin{enumerate}
\item Introduction to  \LaTeX  
\item Course 2 
\item Termpapers and presentations with \LaTeX 
\item Beamer class
\end{enumerate}
}
\frame{\frametitle{numbered lists with pause}
\begin{enumerate}
\item Introduction to  \LaTeX \pause 
\item Course 2 \pause 
\item Termpapers and presentations with \LaTeX \pause 
\item Beamer class
\end{enumerate}
}

\section{Section no.3} 
\subsection{Tables}
\frame{\frametitle{Tables}
\begin{tabular}{|c|c|c|}
\hline
\textbf{Date} & \textbf{Instructor} & \textbf{Title} \\
\hline
WS 04/05 & Sascha Frank & First steps with  \LaTeX  \\
\hline
SS 05 & Sascha Frank & \LaTeX \ Course serial \\
\hline
\end{tabular}}


\frame{\frametitle{Tables with pause}
\begin{tabular}{c c c}
A & B & C \\ 
\pause 
1 & 2 & 3 \\  
\pause 
A & B & C \\ 
\end{tabular} }


\section{Section no. 4}
\subsection{blocs}
\frame{\frametitle{blocs}

\begin{block}{title of the bloc}
bloc text
\end{block}

\begin{exampleblock}{title of the bloc}
bloc text
\end{exampleblock}


\begin{alertblock}{title of the bloc}
bloc text
\end{alertblock}
}
\end{document}

%Sascha Frank
%Last modified: Thu Oct 6 10:37:34 MEST 2005 " >> main.$2
echo 0
else echo "Uknown arguments, please check the help : initdev –help"
fi
fi
fi
