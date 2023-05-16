# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"
# powerlevel10k/powerlevel10k
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  jira
  zsh-autosuggestions
  #zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
autoload -U promptinit; promptinit
source ~/.bash_alias
prompt pure

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PS1="🌈  ✈️ %n👽 $%C 👉 "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# export http_proxy=http://127.0.0.1:7890;export https_proxy=http://127.0.0.1:7890;
# export PATH="$PATH:/Users/arch/Downloads/flutter/bin"
# export PUB_HOSTED_URL=https://pub.flutter-io.cn
# export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
# export no_proxy=localhost,127.0.0.1
export PATH="$HOME/.jenv/bin:$PATH"
# export HTTP_PROXY=http://127.0.0.1:7890
# export HTTPS_PROXY=http://127.0.0.1:7890
# export NO_PROXY=localhost,127.0.0.1,10.96.0.0/12,192.168.59.0/24,192.168.39.0/24
# eval "$(jenv init -)"

#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

# Bilibili drive download
alias bd="bdex download"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.nvm/versions/node/v14.17.6/bin"
export PATH="$PATH:$HOME/fvm/default/bin"
export GRADLE_HOME="$HOME/gradle-4.5.1"
export PATH="$PATH:$GRADLE_HOME/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$PATH:$HOME/Downloads/apache-maven-3.8.2/bin"
# export FLUTTER_STORAGE_BASE_URL="https://mirrors.tuna.tsinghua.edu.cn/flutter"
# export PUB_HOSTED_URL="https://mirrors.tuna.tsinghua.edu.cn/dart-pub"
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
alias gsdl="git diff | git-split-diffs --color | less -RFX"

alias rlist='find . | grep -F .tw. | xargs rm -f'
alias some_redis="docker run -p 6379:6379 --name some-redis -d redis redis-server --save 60 1 --loglevel warning"

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"
export SERVERLESS_PLATFORM_VENDOR=aws
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
alias leetcode='docker run -it --rm -v $HOME/data:/root skygragon/leetcode-cli'
alias volume='setVolume(){ osascript -e "set Volume $1" }; setVolume'
alias console='osascript -e "tell app \"Console\" to activate"'
alias notion='osascript -e "tell app \"Notion\" to activate"'
alias revobe='pushd ~/codes/revo/digitalrehab-revo-be-main && mvn clean compile quarkus:dev -Dquarkus.profile=local -Dtencent.credentials.accessKey= -Dtencent.credentials.secretKey= -Daws.accessKeyId= -Daws.secretAccessKey='
alias mysqld='docker container stop mysql || true && docker run -d -it --rm --name mysql -p 3306:3306 --mount "src=mysqldata,target=/var/lib/mysql" -e MYSQL_ROOT_PASSWORD=websecret mysql:8.0.30'
alias adminer='docker container stop adminer || : && docker run -d -it --rm --name adminer --link mysql:db -p 18111:8080 adminer'
alias vim='nvim'
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

# config bat to be aliased for cat
if [ "$(command -v bat)" ]; then
  unalias -m 'cat'
  alias cat='bat -pp --theme="Nord"'
fi

alias python="python3"
alias ep="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"
alias uep="export https_proxy= http_proxy= all_proxy="
alias lisport="lsof -i -P"
alias agora_token="docker run -d -p 8111:8111 --env-file=/Users/arch/Documents/codes/agora-token-service/.env agora-token-srv:latest && echo 'Started agora local token service...'"
#alias agora_token_rm='docker ps -a | grep agora-token-srv:latest | awk "{print $1}" | xargs -I {} docker stop {} | xargs -I {} docker rm {}'
alias agora_token_rm='docker ps -a | grep agora-token-srv:latest | awk "{print \$1}" | xargs -I {} docker stop {} | xargs -I {} docker rm {} && echo "removed" && docker ps -a'
# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
export PATH=$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS
# pnpm end

alias cat="bat"

export ZSH_ASK_API_KEY=""
source $HOME/.zsh/zsh-ask/zsh-ask.zsh
