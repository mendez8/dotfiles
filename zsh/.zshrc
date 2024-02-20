
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# The meaning of these options can be found in man page of `zshoptions`.
setopt HIST_IGNORE_DUPS  
setopt HIST_REDUCE_BLANKS  # remove unnecessary blanks
setopt INC_APPEND_HISTORY_TIME  # append command to history file immediately after execution
setopt EXTENDED_HISTORY  # record command start time


###########################
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -f ~/workplace/.dotfiles/zsh/git/git.plugin.zsh ] && source ~/workplace/.dotfiles/zsh/git/git.plugin.zsh

# Aliases
alias l='ls -lFh'          #size,show type,human readable
alias la='ls -lAFh'        #long list,show almost all,show type,human readable
alias lr='ls -tRFh'        #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'        #long list,sorted by date,show type,human readable
alias ll='ls -la'           #long list
alias lh='ls -lhrt'
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'

alias bat='bat --theme=TwoDark'

### WORKSPACE CONFIGURATION ###
export WORKSPACE=~/workplace/commshub-sender-service

alias c='cd $WORKSPACE'
alias cn='c && nvim -c "colorscheme shine"'
alias t="cd $WORKSPACE && tmux new-session -d && tmux send-keys 'cn' C-m && tmux new-window && tmux select-window -t 0 && tmux -2 attach-session"
export GIT_SSH_COMMAND="ssh -i ~/.ssh/id_teya_ed25519"

export PATH="/Users/miguel.hernandez/workplace/flutter/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/miguel.hernandez/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/miguel.hernandez/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/miguel.hernandez/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/miguel.hernandez/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/miguel.hernandez/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
. /opt/homebrew/opt/asdf/libexec/asdf.sh

