# ~/.zshrc
# EDITOR
export EDITOR=nvim

# HOMEBREW_FORCE_BREWED_CURL
export HOMEBREW_FORCE_BREWED_CURL=1

# MANPAGER, MANWIDTH
export MANPAGER="nvim --cmd 'set laststatus=0 ' +'set statuscolumn= nowrap laststatus=0' +Man\!"
export MANWIDTH=999

# PAGER
export PAGER=less

# PATH
path=("$HOME/Library/Java/JavaVirtualMachines/temurin-21.jdk/Contents/Home/bin" $path)
path=("$HOMEBREW_PREFIX/bin" $path)
path=("$HOMEBREW_PREFIX/opt/bash/bin" $path)
path=("$HOMEBREW_PREFIX/opt/binutils/bin" $path)
path=("$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin" $path)
path=("$HOMEBREW_PREFIX/opt/curl/bin" $path)
path=("$HOMEBREW_PREFIX/opt/findutils/libexec/gnubin" $path)
path=("$HOMEBREW_PREFIX/opt/git/bin" $path)
path=("$HOMEBREW_PREFIX/opt/gawk/libexec/gnubin" $path)
path=("$HOMEBREW_PREFIX/opt/gnu-sed/libexec/gnubin" $path)
path=("$HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin" $path)
path=("$HOMEBREW_PREFIX/opt/gnu-which/libexec/gnubin" $path)
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
## bcb | Create Brewfile
alias bcb="sh $HOME/'Projects/Programming/Scripts/Zsh/Homebrew/Create Brewfile.command'"

## bcv | Check Versions of Installed-On-Request Homebrew Formulae, Casks, and MAS Applications
alias bcv="sh $HOME/'Projects/Programming/Scripts/Zsh/Homebrew/Check Versions of Installed-On-Request Formulae, Casks, and MAS Applications.command'"

## bruu | Update Homebrew, and upgrade Homebrew formulae and casks
alias bruu='brew update && brew upgrade'

## c++ | Homebrew-Installed GNU Compiler Collection's c++
alias c++='c++-14'

## cat | Use 'bat --style=plain --paging=never' instead of 'cat'
alias cat='bat -pp'

## cls | Clear screen
### Source: https://stackoverflow.com/a/29876027
alias cls='printf "\33c\e[3J"'

## cpp | Homebrew-Installed GNU Compiler Collection's cpp
alias cpp='cpp-14'

## diffcu | GNU diff with additions colored green and removals colored red
alias diffcu='diff --color -u'

## gdiff | Show changes between Git commits, commit and working tree, et cetera
alias gdiff='git diff'

## ecxl | Show current values of $COLUMNS and $LINES
alias ecxl='echo "\$COLUMNS×\$LINES: $COLUMNS×$LINES"'

## g++ | Homebrew-Installed GNU Compiler Collection's g++
alias g++='g++-14'

## gadd | Add file contents to current Git index
alias gadd='git add'

## gbranch | List, create, or delete Git branches
alias gbranch='git branch'

## gbsc | Show current Git branch
alias gbsc='git branch --show-current'

## gcam | Amend last Git commit's message
alias gcam='git commit --amend -m'

## gcc | Homebrew-Installed GNU Compiler Collection's gcc
alias gcc='gcc-14'

## gchp | Apply the changes introduced by some existing Git commits
alias gchp='git cherry-pick'

## gclo | Clone a Git repository into a new directory
alias gclo='git clone'

## gcom | Record changes to current Git branch
alias gcom='git commit -m'

## gdhh | Show changes between last two Git commits
alias gdhh='git diff HEAD^ HEAD'

## gdiff | Show changes between Git commits, commit and working tree, et cetera
alias gdiff='git diff'

## gdifft | Show changes using common diff tools
alias gdifft='git difftool'

## glog | Show Git commit logs
alias glog='git log'

## gplom | Pull from main branch of origin remote Git repository
alias gplom='git pull origin main'

## gmerg | Join two or more Git development histories together
alias gmerg='git merge'

## gpsom | Push to main branch of origin remote Git repository
alias gpsom='git push origin main'

## gpull | Fetch from and integrate with another Git repository or local Git branch
alias gpull='git pull'

## gpush | Update refs of remote Git repository along with associated objects
alias gpush='git push'

## gres | Reset current Git HEAD to the specified state
alias gres='git reset'

## grbi | Reapply Git commits on top of another base tip
alias grbi='git rebase -i'

## grfl | Manage Git reflog information
alias grfl='git reflog'

## grm | Remove files from current Git working tree and index
alias grm='git rm'

## grph | Return shortened hash of current Git commit
alias grph='git rev-parse --short HEAD'

## gsadd | Add submodule file contents to current Git index
alias gsadd='git submodule add'

## gsq | Squash last N Git commits
alias gsq='git_squash'

## gsres | Reset submodules in current Git branch
alias gsres='git submodule deinit -f . && git submodule update --init'

## gst | Show status of current Git branch
alias gst='git status'

## gsub | Initialize, update, or inspect Git submodules
alias gsub='git submodule'

## gsur | Update submodules in current Git branch
alias gsur='git submodule update --remote --merge'

## gsw | Switch Git branches
alias gsw='git switch'

## gswm | Switch to main Git branch
alias gswm='git switch main'

## guisw | Ignore a previously Git-tracked file from the index 
alias guisw='git update-index --skip-worktree'

## java8 | Homebrew-Installed Java 8 (Zulu)
alias java8='unset JAVA_HOME; export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home; java -version'

## java17 | Homebrew-Installed Java 17 (Temurin)
alias java17='unset JAVA_HOME; export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home; java -version'

## java21 | Homebrew-Installed Java 21 (Temurin)
alias java21='unset JAVA_HOME; export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-21.jdk/Contents/Home; java -version'

## kas | Kill all Automator services
alias kas='pkill -9 com.apple.automator.runner'

## less | Use 'bat --paging=always' (with $PAGER) instead of 'less'
alias less='bat --paging=always'

## lmkc | Clean up (remove) all regeneratable files generated by latex and bibtex or biber except dvi, postscript, and pdf
alias lmkc='latexmk -c'

## lmklua | Recipe for compiling LuaLaTeX documents with latexmk
alias lmklua='latexmk -lualatex -file-line-error -interaction=nonstopmode -synctex=1'

## lmkpdf | Recipe for compiling pdfLaTeX documents with latexmk
alias lmkpdf='latexmk -pdflatex -file-line-error -interaction=nonstopmode -synctex=1'

## lmkxe | Recipe for compiling XeLaTeX documents with latexmk
alias lmkxe='latexmk -xelatex -file-line-error -interaction=nonstopmode -synctex=1'

## mgcd | Crop image
alias mgcd='magick_crop_default'

## mged | Extend image
alias mged='magick_extent_default'

## mgpi | Convert PDF to image
alias mgpi='magick_pdf2image'

## nvd | Run Neovim in diff mode
alias nvd='nvim -d'

## nvimdiff | Run Neovim in diff mode
alias nvimdiff='nvim -d'

## nvti | Run Neovim in terminal mode
alias nvti='nvim -c :terminal -c startinsert'

## refresh | Refresh Finder
alias refresh="osascript -e 'tell application \"Finder\" to tell front window to update every item'"

## stlmu | Update TeX Live with tlmgr
alias stlmu='sudo tlmgr update --self && sudo tlmgr update --all'

## which | Homebrew-Installed GNU which
alias which='gwhich'

# Functions in Interactive Shells
## For more info fpath and autoload, see
## https://stackoverflow.com/a/63661686
## https://unix.stackexchange.com/a/526429
fpath=($HOME/.zsh_functions/interactive/ $fpath);

## clear | Clear screen (redefinition)
### Source: https://stackoverflow.com/a/26615036
autoload -Uz $HOME/.zsh_functions/interactive/clear

## copy_bundle_id | Copy bundle ID of macOS application
### Source: https://stackoverflow.com/a/39464824
autoload -Uz $HOME/.zsh_functions/interactive/copy_bundle_id

## exiftool_show_duration | Recursively show duration of audio and video files with ExifTool
autoload -Uz $HOME/.zsh_functions/interactive/exiftool_show_duration

## find_git_repositories | Find Git repositories in ~/.config, ~/'Configuration Files', and ~/Projects
## Source: https://stackoverflow.com/a/4319315
autoload -Uz $HOME/.zsh_functions/interactive/find_git_repositories

## get_bundle_id | Get bundle ID of macOS application
### Source: https://stackoverflow.com/a/39464824
autoload -Uz $HOME/.zsh_functions/interactive/get_bundle_id

## git_squash | Squash last N Git commits
### Source: https://stackoverflow.com/a/5201642/19821277
autoload -Uz $HOME/.zsh_functions/interactive/git_squash

## magick_crop_default | My default ImageMagick crop command
autoload -Uz $HOME/.zsh_functions/interactive/magick_crop_default

## magick_extent_default | My default ImageMagick extent command
autoload -Uz $HOME/.zsh_functions/interactive/magick_extent_default

## magick_pdf2image | My default ImageMagick PDF to image conversion command
autoload -Uz $HOME/.zsh_functions/interactive/magick_pdf2image

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
