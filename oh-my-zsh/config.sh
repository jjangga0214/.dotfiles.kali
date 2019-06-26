BASE_DIR=$(dirname "$0")

: "${ZSH_CUSTOM:=$HOME/.oh-my-zsh/custom}"

ln -f $BASE_DIR/!1.env.kali.zsh $ZSH_CUSTOM/!1.env.kali.zsh
ln -f $BASE_DIR/aliases.kali.zsh $ZSH_CUSTOM/aliases.kali.zsh