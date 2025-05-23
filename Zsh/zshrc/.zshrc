# ~/.zshrc
# EDITOR
export EDITOR=nvim

# HOMEBREW_FORCE_BREWED_CURL
export HOMEBREW_FORCE_BREWED_CURL=1

# PATH
path=("$HOME/Library/Java/JavaVirtualMachines/temurin-21.jdk/Contents/Home/bin" $path)
path=("$HOMEBREW_PREFIX/bin" $path)
path=("$HOMEBREW_PREFIX/opt/bash/bin" $path)
path=("$HOMEBREW_PREFIX/opt/curl/bin" $path)
path=("$HOMEBREW_PREFIX/opt/git/bin" $path)
path=("$HOMEBREW_PREFIX/opt/gawk/libexec/gnubin" $path)
path=("$HOMEBREW_PREFIX/opt/gnu-sed/libexec/gnubin" $path)
path=("$HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin" $path)
path=("$HOMEBREW_PREFIX/opt/grep/libexec/gnubin" $path)
path=("$HOMEBREW_PREFIX/opt/gzip/bin" $path)
path=("$HOMEBREW_PREFIX/opt/llvm/bin" $path)
path=("$HOMEBREW_PREFIX/opt/make/libexec/gnubin" $path)
path=("$HOMEBREW_PREFIX/opt/perl/bin" $path)
path=("$HOMEBREW_PREFIX/opt/python/libexec/bin" $path)
path=("$HOMEBREW_PREFIX/opt/unzip/bin" $path)
path=("$HOMEBREW_PREFIX/opt/vim/bin" $path)
path=("$HOMEBREW_PREFIX/opt/zip/bin" $path)
path=("$HOMEBREW_PREFIX/opt/zsh/bin" $path)
export PATH

# VISUAL
export VISUAL=nvim

# Setup Sources
source "$HOME/Configuration Files/Zsh/zsh-syntax-highlighting/Themes/Catppuccin/Catppuccin Mocha.zsh"
source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Keybindings (kitty)
bindkey '\t\t' autosuggest-accept   # tab + tab        | autosuggest
bindkey '^[[Z' complete-word        # shift + tab      | complete
bindkey '^U' backward-kill-line     # ctrl + u         | kill backwards

# Aliases
## bcb | Creete Brewfile
alias bcb="sh $HOME/'Projects/Programming/Scripts/Zsh/Homebrew/Create Brewfile.command'"

## bcv | Check Versions of Installed-On-Request Homebrew Formulae, Casks, and MAS Applications
alias bcv="sh $HOME/'Projects/Programming/Scripts/Zsh/Homebrew/Check Versions of Installed-On-Request Formulae, Casks, and MAS Applications.command'"

## c++ | Homebrew-Installed GNU Compiler Collection's c++
alias c++='c++-14'

## cls | Clear screen
### Source: https://stackoverflow.com/a/29876027
alias cls='printf "\33c\e[3J"'

## cpp | Homebrew-Installed GNU Compiler Collection's cpp
alias cpp='cpp-14'

## ecxl | Show current values of $COLUMNS and $LINES
alias ecxl='echo "\$COLUMNS×\$LINES: $COLUMNS×$LINES"'

## g++ | Homebrew-Installed GNU Compiler Collection's g++
alias g++='g++-14'

## gbsc | Show current Git branch
alias gbsc='git branch --show-current'

## gcc | Homebrew-Installed GNU Compiler Collection's gcc
alias gcc='gcc-14'

## gst | Show status of current Git branch
alias gst='git status'

## gsur | Update Git submodules
alias gsur='git submodule update --remote --merge'

## java8 | Homebrew-Installed Java 8 (Zulu)
alias java8='unset JAVA_HOME; export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home; java -version'

## java17 | Homebrew-Installed Java 17 (Temurin)
alias java17='unset JAVA_HOME; export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home; java -version'

## java21 | Homebrew-Installed Java 21 (Temurin)
alias java21='unset JAVA_HOME; export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-21.jdk/Contents/Home; java -version'

# Functions in Interactive Shells
## For more info fpath and autoload, see
## https://stackoverflow.com/a/63661686
## https://unix.stackexchange.com/a/526429
fpath=($HOME/.zsh_functions/interactive/ $fpath);

## clear | Clear screen (redefinition)
### Source: https://stackoverflow.com/a/26615036
autoload -Uz $HOME/.zsh_functions/interactive/clear

## exiftool_show_duration | Recursively show duration of audio and video files with ExifTool
autoload -Uz $HOME/.zsh_functions/interactive/exiftool_show_duration

## find_git_repositories | Find Git repositories in ~/.config, ~/'Configuration Files', and ~/Projects
## Source: https://stackoverflow.com/a/4319315
autoload -Uz $HOME/.zsh_functions/interactive/find_git_repositories

## get_bundle_id | Get bundle ID of macOS application
### Source: https://stackoverflow.com/a/39464824
autoload -Uz $HOME/.zsh_functions/interactive/get_bundle_id

## magick_extent_default | My default ImageMagick extent command
autoload -Uz $HOME/.zsh_functions/interactive/magick_extent_default

## mkcd | Combined mkdir and cd function
### Source: https://unix.stackexchange.com/a/9124
autoload -Uz $HOME/.zsh_functions/interactive/mkcd

## pause | Pause and wait for user input
### Source: https://stackoverflow.com/a/51075278
autoload -Uz $HOME/.zsh_functions/interactive/pause

## pause_and_print_separator | Combined pause and print_separator function
### Source: https://stackoverflow.com/a/51075278
autoload -Uz $HOME/.zsh_functions/interactive/pause_and_print_separator

## print_separator | Print line separator
autoload -Uz $HOME/.zsh_functions/interactive/print_separator

## sevenzip_default | My default 7-Zip command
autoload -Uz $HOME/.zsh_functions/interactive/sevenzip_default