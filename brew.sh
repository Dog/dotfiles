brew update
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

brew update
brew cask update

# Upgrade any already-installed formulae.
brew upgrade --all

brew install coreutils

# Update grep
brew install homebrew/dupes/grep

brew install git
brew install pyenv
brew install pyenv-virtualenv
brew install weechat
brew install zsh
brew install z
brew install mysql
brew install postgres
brew install htop
brew install lua
brew install macvim --HEAD --with-cscope --with-lua --with-override-system-vim --with-luajit --with-python
brew install koekeishiya/kwm/kwm
brew install vit

# Development Tools
brew cask install --appdir=/Applications dash
brew cask install --appdir=/Applications sequel-pro
brew cask install --appdir=/Applications vivaldi
brew cask install --appdir=/Applications postgres
brew cask install --appdir=/Applications vmware-fusion
brew cask install --appdir=/Applications vagrant
brew cask install --appdir=/Applications hyperterm
brew cask install --appdir=/Applications slack

# Plugins/Codecs
brew cask install --appdir=/Applications flash
brew cask install --appdir=/Applications silverlight
brew cask install --appdir=/Applications flashlight

# Applications
brew cask install --appdir=/Applications 1password
brew cask install --appdir=/Applications vlc
brew cask install --appdir=/Applications the-unarchiver
brew cask install --appdir=/Applications unrarx
brew cask install --appdir=/Applications evernote
brew cask install --appdir=/Applications alfred

brew cleanup
