/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Development Tools
brew install git
brew install nvm
brew cask install docker
brew cask install iterm2
brew cask install visual-studio-code
brew cask install atom

#Browsers
brew cask install chrome
brew cask install brave

# Social Tools
brew cask install discord

# MISC
brew cask install flux
brew cask install private-internet-access
brew cask install buttercup


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