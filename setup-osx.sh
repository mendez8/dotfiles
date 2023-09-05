# Download and run this script

# Setup ssh keys
mkdir -p ~/.ssh
cd ~/.ssh
ssh-keygen -t ed25519 -C "mendez8@gmail.com"

# Clone dotfiles
mkdir -p ~/workplace
cd ~/workplace
git clone git@github.com:mendez8/.dotfiles.git

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
cd ~/workplace/.dotfiles/osx
brew bundle

# ZSH prompt
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

# FZF
$(brew --prefix)/opt/fzf/install

# Alacritty
mkdir -p ~/.config/alacritty/
ln -s ~/workplace/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# Yabai - PRERREQUISITE FOLLOW CRAZY Github README CONFIG
mkdir -p ~/.config/yabai
ln -s ~/workplace/.dotfiles/osx/yabai/yabairc ~/.config/yabai/yabairc
chmod +x ~/.config/yabai/yabairc

# skhd
mkdir -p ~/.config/skhd
ln -s ~/workplace/.dotfiles/osx/skhd/skhdrc ~/.config/skhd/skhdrc

# Sketchybar
ln -s ~/workplace/.dotfiles/osx/sketchybar ~/.config/sketchybar

# Firefox: config, extensions

# Karabiner: firefox remapping
