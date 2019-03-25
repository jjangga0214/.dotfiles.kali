BASE_DIR=$(dirname "$0")

: "${ZSH_CUSTOM:=$HOME/.oh-my-zsh/custom}"

cp $BASE_DIR/aliases.kali.zsh $ZSH_CUSTOM
cp $BASE_DIR/env.kali.zsh $ZSH_CUSTOM