export http_proxy="http://127.0.0.1:15732"
export https_proxy="http://127.0.0.1:15732"
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

