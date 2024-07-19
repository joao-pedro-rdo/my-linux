#!/bin/bash
#  TEM QUE ESTAR NO DIRETORIO RAIZ 
cd ..
#Instalando o tema Dracula para o terminal GNOME
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh
cd ..
rm -rf gnome-terminal
