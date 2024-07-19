#!/bin/bash

#  TEM QUE ESTAR NO DIRETORIO HOME

# Definindo variável ZSH_CUSTOM corretamente
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Removendo o tema Spaceship existente, se necessário
sudo rm -rf "$ZSH_CUSTOM/themes/spaceship-prompt"

# Instalando o tema Spaceship para o Oh My Zsh
sudo git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
sudo ln -sf "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Configurando o tema Spaceship no .zshrc
echo "Configurando tema Spaceship no .zshrc"
sudo sed -i 's/ZSH_THEME=".*"/ZSH_THEME="spaceship"/' "/root/.zshrc"

# Adicionando configuração extra ao .zshrc
cat << 'EOF' | sudo tee -a "$HOME/.zshrc"
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "
EOF

# Instalando zinit e plugins
echo "Instalando zinit e plugins"
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# Adicionando plugins zinit ao .zshrc
cat << 'EOF' | sudo tee -a "$HOME/.zshrc"
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
EOF

# Instruções para o usuário
echo "Para configurar o Zsh como shell padrão, vá em: Preferências -> Perfil -> Comando -> Personalizado e defina como 'zsh'"
echo "O script de instalação foi concluído com sucesso!"

