# ~/Projects/Programming/Scripts/zsh/package-management/homebrew/create-brewfile.command
## Dependencies:
## Homebrew | https://brew.sh/
source $HOME/.zsh_functions/clear
source $HOME/.zsh_functions/pause

clear
cd "$HOME/Configuration Files/homebrew/backups"
brew bundle dump --force
less Brewfile
clear
pause "Press Return to exit. "
