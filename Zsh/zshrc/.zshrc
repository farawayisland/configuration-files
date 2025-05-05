# ~/.zshrc
# EDITOR
export EDITOR=nvim

# HOMEBREW_FORCE_BREWED_CURL
export HOMEBREW_FORCE_BREWED_CURL=1

# PATH
path=("$HOMEBREW_PREFIX/bin" $path)
path=("$HOMEBREW_PREFIX/opt/bash/bin" $path)
path=("$HOMEBREW_PREFIX/opt/curl/bin" $path)
path=("$HOMEBREW_PREFIX/opt/git/bin" $path)
path=("$HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin" $path)
path=("$HOMEBREW_PREFIX/opt/gzip/bin" $path)
path=("$HOMEBREW_PREFIX/opt/llvm/bin" $path)
path=("$HOMEBREW_PREFIX/opt/make/libexec/gnubin" $path)
path=("$HOMEBREW_PREFIX/opt/python/libexec/bin" $path)
path=("$HOMEBREW_PREFIX/opt/unzip/bin" $path)
path=("$HOMEBREW_PREFIX/opt/vim/bin" $path)
path=("$HOMEBREW_PREFIX/opt/zip/bin" $path)
path=("$HOMEBREW_PREFIX/opt/zsh/bin" $path)
export PATH

# VISUAL
export VISUAL=nvim

# Setup Sources
source ~/'Configuration Files/Zsh/zsh-syntax-highlighting/Themes/Catppuccin/Catppuccin Mocha.zsh'
source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Keybindings
bindkey '\t\t' autosuggest-accept  # tab + tab   | autosuggest
bindkey '^[[Z' complete-word       # shift + tab | complete

# Aliases
## c++ | Homebrew-Installed GNU Compiler Collection's c++
alias c++='c++-14'

## cls | Clear screen
### Source: https://stackoverflow.com/a/29876027
alias cls='printf "\33c\e[3J"'

## cpp | Homebrew-Installed GNU Compiler Collection's cpp
alias cpp='cpp-14'

## g++ | Homebrew-Installed GNU Compiler Collection's g++
alias g++='g++-14'

## gcc | Homebrew-Installed GNU Compiler Collection's gcc
alias gcc='gcc-14'

# Functions in Interactive Shells
## For more info fpath and autoload, see
## https://stackoverflow.com/a/63661686
## https://unix.stackexchange.com/a/526429
fpath=(~/.zsh_functions/interactive/ $fpath);

## clear | Clear screen (redefinition)
### Source: https://stackoverflow.com/a/26615036
autoload -Uz ~/.zsh_functions/interactive/clear

## magick_extent_default | My default ImageMagick extent command
autoload -Uz ~/.zsh_functions/interactive/magick_extent_default

## mkcd | Combined mkdir and cd function
### Source: https://unix.stackexchange.com/a/9124
autoload -Uz ~/.zsh_functions/interactive/mkcd

## pause | Pause and wait for user input
### Source: https://stackoverflow.com/a/51075278
autoload -Uz ~/.zsh_functions/interactive/pause

## pause_and_print_separator | Combined pause and print_separator function
### Source: https://stackoverflow.com/a/51075278
autoload -Uz ~/.zsh_functions/interactive/pause_and_print_separator

## print_separator | Print line separator
autoload -Uz ~/.zsh_functions/interactive/print_separator

## sevenzip_default | My default 7-Zip command
autoload -Uz ~/.zsh_functions/interactive/sevenzip_default