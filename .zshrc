# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git web-search frontend-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

cr-auto() {
    issue_id="$(git log -1 --pretty=%B | head -n1 | awk '{print $1}' | awk '{$1=$1};1' | sed 's/^.//;s/.$//')"
    description="$(git log -1 --pretty=%B | head -n1 | awk '{$1="";print $0}' | awk '{$1=$1};1')"

    cr --new-review --issue "$issue_id" --description "$description" "$@"
}

# Remote command execution
#DEVBOX=dev-mendem.notxac.net
DEVBOX=roosevelt.notxac.net

devexec () {
    ssh "$DEVBOX" "$@"
}

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

alias odin="ssh -L 2009:localhost:2009 mendem.aka.amazon.com -f -N"



alias m="ssh dev-mendem.notxac.net"
#alias m="ssh mendem.aka.amazon.com"
alias ms="m -t tmux new -s"
alias mr="m -t tmux attach -t"
alias mn="mr wip || ms wip"

alias mw=mwinit

alias bb=brazil-build

alias bbc='bb clean'
alias bbr='bb release'
alias bbcr='bbc && bbr'

alias bba='brazil-build apollo-pkg'
alias bre='brazil-runtime-exec'
alias brc='brazil-recursive-cmd'
alias bws='brazil ws'
alias bwsuse='bws use --gitMode -p'
alias bwscreate='bws create -n'

alias brc=brazil-recursive-cmd
alias brcb='brc brazil-build'
alias bball='brc --allPackages'
alias bbb='brc --allPackages brazil-build'
alias bbra='bbr apollo-pkg'

alias sam='brazil-build-tool-exec sam'

export PATH=$PATH:$HOME/.odin-tools/env/OdinRetrievalScript-1.0/runtime/bin
export PATH=$HOME/.toolbox/bin:/Users/mendem/Applications/:$PATH
export PATH=/usr/local/opt/python/libexec/bin:$PATH # For Homebrew latest Python version

export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-17.jdk/Contents/Home

alias kdiff="/Applications/kdiff3.app/Contents/MacOS/kdiff3"

export DEVELOPER_ACCOUNT_ID=776315451978
alias adam='checkMidwayValid && mwinit -o && ada credentials update --provider=conduit --role=IibsAdminAccess-DO-NOT-DELETE --once --account mendem-dev'

function checkMidwayValid(){
  [ $(grep HttpOnly_midway-auth.amazon.com ~/.midway/cookie | cut -d $'\t' -f 5) -lt $( date  +%s ) ]
}

export PATH="/usr/local/opt/node@14/bin:$PATH"
export PATH="/Users/mendem/.rodar/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.local/bin"
export PATH=/usr/local/opt/curl/bin:$PATH
export PATH=~/.rodar/bin:$PATH
export JAVA_TOOLS_OPTIONS="-Dlog4j2.formatMsgNoLookups=true"
export PATH="/usr/local/opt/php@5.6/bin:$PATH"

export PATH="/Applications/Fortify/Fortify_SCA_and_Apps_22.1.1/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/openjdk@17/bin:$PATH"
