# Install Oh My Zsh
set -e

if [[ ! -d ~/.oh-my-zsh ]]; then
  echo "\n -- installing oh-my-zsh -- \n"

  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

ZSH_CUSTOM="/home/spin/.oh-my-zsh/custom"

# Install spaceship theme
if [[ ! -d $ZSH_CUSTOM/themes/spaceship-prompt ]]; then
  echo "\n -- SPACESHIP TIME -- \n"

  git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
  ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
fi
# install ohmyzsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/zshrc ~/.zshrc

echo -e "Welcome back!"
