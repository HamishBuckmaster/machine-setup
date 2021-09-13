/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Development Tools
brew install git
brew install nvm
brew install python@3.7
brew install yarn
brew install terraform
brew install pulumi
brew install gpg
brew install scroll-reverser
brew install --cask docker
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask atom
brew install --cask postman
brew install --cask jetbrains-toolbox
brew install --cask bettertouchtool
brew install --cask rectangle
# ruby 
brew install rbenv ruby-build
rbenv install 3.0.0
rbenv global 3.0.0

# Open JDK 
brew install --cask adoptopenjdk/openjdk/adoptopenjdk8

# android compat
brew install --cask android-file-transfer

# Browsers
brew install --cask chrome
brew install --cask brave

# Social Tools
brew install --cask discord

# MISC
brew install --cask flux
brew install --cask spotify
brew install --cask private-internet-access
brew install --cask buttercup


# install zsh plugins #
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


# install the patched versions of powerline fonts: https://github.com/powerline/fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# Override the current .zshrc 
cp -f ./files/.zshrc ~/.zshrc


# git config setup 
git config --global user.name "Hamish Buckmaster"
git config --global user.email "HamishBuckmaster@users.noreply.github.com"

# generate a ssh key for later use
ssh-keygen -t rsa -b 4096 -C "HamishBuckmaster@users.noreply.github.com"
