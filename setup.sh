# Download and run this script

# Prerrequisites
## setup ssh keys
mkdir -p ~/.ssh
cd ~/.ssh
ssh-keygen -t ed25519 -C "mendez8@gmail.com"


mkdir -p ~/workplace
cd ~/workplace
git clone git@github.com:mendez8/.dotfiles.git

# OSX Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

cd ~/workplace/.dotfiles/osx
brew bundle

# OSX fonts
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# Alacritty
mkdir -p ~/.config/alacritty/
ln -s ~/workplace/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# OSX Yabai - PRERREQUISITE FOLLOW CRAZY README CONFIG
mkdir -p ~/.config/yabai
ln -s ~/workplace/.dotfiles/osx/yabai/yabairc ~/.config/yabai/yabairc
chmod +x ~/.config/yabai/yabairc

# OSX skhd
mkdir -p ~/.config/skhd
ln -s ~/workplace/.dotfiles/osx/skhd/skhdrc ~/.config/skhd/skhdrc

# OSX Sketchybar
ln -s ~/workplace/.dotfiles/osx/sketchybar ~/.config/sketchybar

