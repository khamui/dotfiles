# Created by newuser for 5.7.1
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"

# navigation aliases
alias v='nvim'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias k='cd ~'
alias d='cd ~/Documents/Development'
alias jsd='cd ~/Documents/Development/JavaScript'
alias dt='cd ~/Desktop'
alias fa='cd ~/Documents/Development/JavaScript/github-repos/forest-app'
alias fas='cd ~/Documents/Development/JavaScript/github-repos/forest-app; ng serve'
alias rpg='cd ~/Documents/Development/JavaScript/react-pground'
alias lqssh='ssh -i id_ed25519 kha@conway-ssh.liqd.net'
alias lq='cd ~/Documents/Development/LIQD'
alias venv='source venv/bin/activate'

# command aliases
alias ls='ls -alrt -G'
alias s='git status'
alias b='git branch'
alias a='git add .'
alias co='git checkout '
alias po='git pull origin $(git rev-parse --abbrev-ref HEAD)'
alias hist='git log --oneline --graph --decorate --all'
alias zshreload='source ~/.zshrc'
alias weather='curl v2.wttr.in'
alias upconfig='cp -R ~/Documents/Development/devconfigs/{.vim,.gitconfig,.zshenv,.zshrc,.zshrceval} ~/'
alias puconfig='cp -rf ~/{.vim,.gitconfig,.zshenv,.zshrc,.zshrceval} ~/Documents/Development/devconfigs/'
alias pip=pip3

# tmux aliases
alias :q='exit'
alias tmx='tmux'

# lazygit aliases
alias lg='lazygit'

# work aliases
alias wd='cd $ENV'
alias lqdeploy='ssh build@build.liqd.net deploy '
alias lqbuild='ssh build@build.liqd.net build '
alias docrun='docker-compose run app sh -c '

# fzf searcher
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
bindkey '^[[A' fzf-history-widget

path+='/usr/local/bin/flake8'
path+='/usr/local/bin'
export PATH="/Users/khamui:$PATH"


function ve() {
    local py="python3"
    if [ ! -d ./.venv ]; then
        echo "creating venv..."
        if ! $py -m venv .venv --prompt=$(basename $PWD) --without-pip; then
            echo "ERROR: Problem creating venv" >&2
            return 1
        else
            local whl=$($py -c "import pathlib, ensurepip; whl = list(pathlib.Path(ensurepip.__path__[0]).glob('_bundled/pip*.whl'))[0]; print(whl)")
            echo "boostrapping pip using $whl"
            .venv/bin/python $whl/pip install --upgrade pip setuptools wheel
            source .venv/bin/activate
        fi
    else
        source .venv/bin/activate
    fi
}
