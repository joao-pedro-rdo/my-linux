#!/bin/bash

# Atualizando pacotes e instalando dependências
sudo apt update
sudo apt-get install -y zsh 
sudo apt-get install -y curl 
sudo apt-get install -y git 
sudo apt-get install -y dconf-cli

# Instalando Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Alterando o shell padrão para Zsh
chsh -s $(which zsh)


# Instruções para o usuário
echo "Para configurar o Zsh como shell padrão, vá em: Preferências -> Perfil -> Comando -> Personalizado e defina como 'zsh'"

