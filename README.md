# my-linux

Este repositório tem a finalidade de agilizar o processo de instalação e reunir todos os passos necessários para configurar meu Linux. Como frequentemente troco de desktop Linux, este repositório serve como uma referência rápida e prática para manter minha configuração.

## Sumário

1. [Instalação de pacotes essenciais](#instalar-pacotes-essenciais)
2. [Instalação do oh-my-zsh + Dracula](#instalação-do-oh-my-zsh--dracula)
   - [Configurar o Zsh como Shell Padrão](#passo-1-configurar-o-zsh-como-shell-padrão)
   - [Ordem de Instalação](#ordem-de-instalação)
3. [Artigo Base](#artigo-base)

## Instalar Pacotes Essenciais
No arquivo `install-packages.sh` estão listados os pacotes essenciais que costumo instalar em um novo sistema Linux. Para instalar, execute o comando:
```bash
bash install-packages.sh
```

## Instalação do oh-my-zsh + Dracula 
(Necessita de mais testes)
Para um melhor funcionamento, todos os scripts devem estar no diretório home. Alguns ainda precisam de ajustes e mais testes.

### Passo 1: Configurar o Zsh como Shell Padrão

1. Vá em: Preferências -> Perfil -> Comando -> Personalizado e defina como 'zsh'.

2. Caso, ao fechar e abrir o terminal, ele abra com as opções padrão do zsh e não do oh-my-zsh, siga os passos abaixo:
   - Execute `sudo rm -r /root/oh-my-zsh` para remover a instalação atual do oh-my-zsh.
   - Reinicie o processo de configuração.
   - Exclua todos os arquivos de dump do zsh, exceto: `.zshrc`, `.zshrc_history`, `profile` e os arquivos do bash.
   - Retorne ao passo 1.

### Ordem de Instalação

1. **install-zsh.sh**: Script para instalar o Zsh.
   - Execute o script com o comando: `sh install-zsh.sh`

2. **install-dracula.sh**: Script para instalar o tema Dracula.
   - Execute o script com o comando: `sh install-dracula.sh`

3. **my-shell.sh**: Script para configurar o shell personalizado.
   - Execute o script com o comando: `sh my-shell.sh`
   - (FASLTA CONFIGURAR O ZSH THEME SPACESHIP)


### Artigo Base
- [Terminal com Oh My Zsh, Spaceship, Dracula e mais](https://blog.rocketseat.com.br/terminal-com-oh-my-zsh-spaceship-dracula-e-mais/)
