# ~/Projects/Programming/Scripts/zsh/package-management/homebrew/install-emacs-plus.command
## Dependencies:
## Homebrew | https://brew.sh/
source $HOME/.zsh_functions/clear
source $HOME/.zsh_functions/pause

clear
brew tap d12frosted/emacs-plus
brew install emacs-plus --with-debug --with-imagemagick --with-savchenkovaleriy-big-sur-icon --with-xwidgets
pause "Press Return to exit. "
