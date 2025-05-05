# ~/Projects/Programming/Scripts/zsh/package-management/homebrew/check-versions.command
## Dependencies:
## Homebrew | https://brew.sh/
source $HOME/.zsh_functions/clear
source $HOME/.zsh_functions/print_separator
source $HOME/.zsh_functions/pause_and_print_separator

clear
print_separator
echo "[HOMEBREW VERSION: $(brew -v | sed -En 's/Homebrew //p')]"
print_separator
echo '[INSTALLED-ON-REQUEST FORMULAE]'
echo
brew desc --formula $(brew list --installed-on-request)
echo
brew list --versions $(brew list --installed-on-request)
echo
print_separator
## Uncomment the following line if the script fails to show versions of installed casks due to an existing .DS_Store file in the Caskroom folder.
## cd $HOMEBREW_PREFIX'/Caskroom' && find . -name '.DS_Store' -print -type f -delete
echo '[INSTALLED-ON-REQUEST CASKS]'
echo
brew desc $(brew list --cask)
echo
brew list --versions --cask
echo
print_separator
echo '[MAC APP STORE APPLICATIONS]'
echo
mas list
echo
pause_and_print_separator "Press Return to exit. "
