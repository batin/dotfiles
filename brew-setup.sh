#!/bin/bash

export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

sudo chown -R $(whoami):admin /opt/homebrew
sudo chmod -R g+w /opt/homebrew

## browser
brew install --cask google-chrome

# tap
brew tap rcmdnk/homebrew-rcmdnkpac # screen

## tool
brew install --cask appcleaner
brew install --cask bartender
brew install --cask the-unarchiver

## terminal
brew install --cask iterm2

## ide
brew install --cask visual-studio-code

## prototyping tool
brew install --cask figma

## debug
brew install --cask postman

## meeting
brew install --cask zoom
brew install --cask discord

# app store
brew install mas
mas account | grep "Not signed in"
if [ $? -eq 0 ]; then
  echo -n "require sign in appl store"
  exit 1
fi
mas install 497799835 # Xcode
(
    sudo xcodebuild -license accept
)
mas install 451444120  # Memory Clean
mas install 539883307  # LINE
mas install 425424353  # The Unarchiver
mas install 803453959  # slack

# homebrew
brew install git
brew install python
brew install python3
(
    pip3 install --upgrade pip setuptools wheel
)

# clean up
brew cleanup -s

brew doctor