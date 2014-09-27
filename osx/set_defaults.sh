# Sets OS X defaults.


# Always open everything in Finder's list view
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder
chflags nohidden ~/Library

# Set a fast key repeat
defaults write NSGlobalDomain KeyRepeat -int 0

