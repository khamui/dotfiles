# Created by newuser for 5.7.1
eval "$(starship init zsh)"

# ANACONDA - JUPYTER
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/khamui/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/khamui/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/khamui/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/khamui/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

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
alias jup='cd ~/Documents/Development/Jupyter; jupyter-lab --browser=chrome'
alias jupn='cd ~/Documents/Development/Jupyter; jupyter notebook --browser=chrome'

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
