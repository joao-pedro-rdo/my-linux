#!/bin/bash
# Função para exibir mensagens de erro e sair
function error_exit {
    echo "$1" 1>&2
    exit 1
}

# Verificar se o script está sendo executado como root
if [ "$(id -u)" -ne 0 ]; then
    error_exit "Este script precisa ser executado como root. Use sudo."
fi 

# Atualizar repositórios e pacotes
echo "Atualizando repositórios e pacotes..."
apt update || error_exit "Erro ao atualizar os repositórios."
apt upgrade -y || error_exit "Erro ao atualizar os pacotes."


PACKAGES=(
    openssh-server
    net-tools
    curl
    git 
    nano
)

# Instalar os pacotes
echo "Instalando pacotes: ${PACKAGES[@]}"
for package in "${PACKAGES[@]}"; do
    apt install -y $package || error_exit "Erro ao instalar o pacote $package."
done

# Exibir mensagem de sucesso
echo "Todos os pacotes foram instalados com sucesso!"

# Verificar a instalação dos pacotes
for package in "${PACKAGES[@]}"; do
    dpkg -l | grep -i $package && echo "$package instalado com sucesso" || echo "Erro ao instalar $package"
done
