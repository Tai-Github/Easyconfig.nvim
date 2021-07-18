#!/bin/bash

# Exit when command fails
# set -o errexit

# Install pip functions
install_pip_on_ubuntu()
{
  sudo apt update
  sudo apt install python3-pip
}

install_pip_on_arch()
{
  sudo pacman -Sy python-pip
}

install_pip()
{
  echo "Installing pip..."
	[ -n "$(cat /etc/os-release | grep Ubuntu)" ] && install_pip_on_ubuntu
	[ -f "/etc/arch-release" ] && install_pip_on_arch
  python3 -m pip install --user --upgrade pynvim
}

ask_install_pip()
{
  echo "Pip not found..."
  read -p "Do you like to install pip now?(y/n): " answer
  if [[ "$answer" != "${answer#[Yy]}" ]]; then
    install_pip
  else
    echo "Installer cancel"
    echo "Sorry, this config need pip to install some plugins :("
    exit 1
  fi
}


# Install nodejs functions
install_node_on_ubuntu()
{
  sudp apt update
  sudo apt install nodejs npm
}

install_node_on_arch()
{
  sudo pacman -Sy nodejs npm
}

install_node()
{
  echo "Installing nodejs, npm..."
  [ -n "$(cat /etc/os-release | grep Ubuntu)" ] && install_node_on_ubuntu
  [ -f "/etc/arch-release" ] && install_node_on_arch
}

ask_install_node()
{
  echo "Nodejs not found..."
  read -p "Do you like to install nodejs now?(y/n): " answer
  if [[ "$answer" != "${answer#[Yy]}" ]]; then
    install_node
  else
    echo "Installer cancel"
    echo "Sorry, this config need nodejs to install some plugins :("
    exit 1
  fi
}

# Install xclip help neovim use system clipboard
install_xclip_on_ubuntu()
{
  sudo apt-get update
  sudo apt-get install xclip
}

install_xclip_on_arch()
{
  sudo pacman -Sy xclip
}

install_xclip()
{
  echo "Installing xclip(help neovim use system clipboard)..."
  [ -n "$(cat /etc/os-release | grep Ubuntu)" ] && install_node_on_ubuntu
  [ -f "/etc/arch-release" ] && install_node_on_arch
}

# Other functions
remove_old_config()
{
  echo "Moving old neovim config folder to ~/.config/nvim.old"
  mv ~/.config/nvim ~/.config/nvim.old
}

install_packer()
{
  echo "Install packer.nvim(neovim plugin manager)..."
  git clone https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
}


# Wellcome
echo "Wellcome to installer"
sleep .5


# Check and remove old neovim config
if [ -d "$HOME/.config/nvim" ]; then
  remove_old_config
  sleep .5
fi


# Check and ask to install pip
if ! [ -x "$(command -v pip3)" ]; then
  ask_install_pip
else
  echo "Pip already installed..."
  python3 -m pip install --user --upgrade pynvim
fi
sleep .5


# Check and ask to install nodejs
if ! [ -x "$(command -v node)" ]; then
  ask_install_node
else
  echo "Nodejs already installed..."
fi
sleep .5


# Check and install xclip
if ! [ -x "$(command -v xclip)" ]; then
  install_xclip
else
  echo "Xclip already installed..."
fi
sleep .5


# Check and install packer.nvim(neovim plugins manager)
if [ -e "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim" ]; then
  echo "Packer.nvim(neovim plugins manager) already installed..."
else
  install_packer
fi
sleep .5


# Clone config
echo "Cloning config"
git clone https://github.com/Tai-Github/nvim ~/.config/nvim
# [ -e "$HOME/.config/nvim/README.md" ] && rm "$HOME/.config/nvim/README.md"
# [ -d "$HOME/.config/nvim/.git" ] && rm -rf "$HOME/.config/nvim/.git"
# [ -d "$HOME/.config/nvim/static" ] && rm "$HOME/.config/nvim/media"


# Install success
echo "--------------------------------------------------"
echo "Install success."
echo "Before start neovim, you need to install and activate a font from here: https://github.com/ryanoasis/nerd-fonts."
echo "If you don't have nerd font, some UI will be broken."

exit 0
