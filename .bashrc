export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ll='ls -lFG'
alias la='ls -alFG'
alias ls='ls -FG'
 
# Make grep more user friendly by highlighting matches
alias grep='grep --color=auto'

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias vlc="/Applications/VLC.app/Contents/MacOS/VLC"
