export ZSH="$HOME/.oh-my-zsh"
plugins=(git)

ZSH_THEME="gallifrey"
source $ZSH/oh-my-zsh.sh

export http_proxy="http://127.0.0.1:15732"
export https_proxy="http://127.0.0.1:15732"

export PATH="$HOME/Code/My/cds:$PATH"

# cds config
cds() { [[ "$1" =~ ^(save|list)$ ]] && command cds "$@" || { local d=$(command cds "$@"); [[ -d "$d" ]] && cd "$d" || echo "$d"; } }
export PATH="$HOME/.local/bin:$PATH"
