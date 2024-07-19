# my-linux

Este repositório tem a finalidade de agilizar o processo de instalação e reunir todos os passos necessários para configurar meu Linux. Como frequentemente troco de desktop Linux, este repositório serve como uma referência rápida e prática para manter minha configuração.

## Instalação do oh-my-zsh + Dracula

Para um melhor funcionamento, todos os scripts devem estar no diretório home. Alguns ainda precisam de ajustes e mais testes.

### Passo 1: Configurar o Zsh como Shell Padrão

1. Vá em: Preferências -> Perfil -> Comando -> Personalizado e defina como 'zsh'.

2. Caso, ao fechar e abrir o terminal, ele abra com as opções padrão do zsh e não do oh-my-zsh, siga os passos abaixo:
   - Execute `sudo rm -r /root/oh-my-zsh` para remover a instalação atual do oh-my-zsh.
   - Reinicie o processo de configuração.
   - Exclua todos os arquivos de dump do zsh, exceto: `.zshrc`, `.zshrc_history`, `profile` e os arquivos do bash.
   - Retorne ao passo 1.

### Artigo Base
- [Terminal com Oh My Zsh, Spaceship, Dracula e mais](https://blog.rocketseat.com.br/terminal-com-oh-my-zsh-spaceship-dracula-e-mais/)
