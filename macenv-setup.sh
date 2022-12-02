# mac env

## finder

### don"t create .DS_Store network volume
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

### Show Status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

### show all file extension
defaults write -g AppleShowAllExtensions -bool true

### show Library folder
chflags nohidden ~/Library

### folder first order
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 1 

## Automatically hide or show the Dock
defaults write com.apple.dock autohide -bool true

### show battery persent
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

killall cfprefsd
killall Finder
killall Dock
killall SystemUIServer