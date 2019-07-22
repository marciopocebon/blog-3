#!/bin/bash
#
#
# script de instalación
#  wget https://raw.githubusercontent.com/uGeek/blog/master/scripts/ohmyzsh ; bash  ohmyzsh ; rm ohmyzsh

# Instalando  ZSH y git-core
#Instalando desde los repositorios:

sudo apt install zsh git-core

# Descargando Oh My ZSH y ejecutarlo
#Llegó la hora de Instalar Oh My Zsh

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# Cambiar la shell a ZSH
#Vamos a cambiar nuestra Shell actual a zsh:

chsh -s `which zsh`

# Instalando las Fuentes Powerline para ZSH
#Si en tu terminal no aparecen correctamente los símbolos, es necesario instalar:

sudo apt install fonts-powerline

# Temas
#Voy a cambiar el tema *robbyrussell* e instalar el tema agnoster:
echo 'Copia el tema agnoster y sustituyelo

# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"
'
nano ~/.zshrc


echo '
## Flecha Arriba
"\e[A":history-search-backward
## Flecha Abajo
"\e[B":history-search-forward
' > ~/.inputrc

# Fuentes
#- https://ohmyz.sh/
#- http://zshwiki.org/
