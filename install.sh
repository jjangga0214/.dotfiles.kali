BASE_DIR=$(dirname "$0")

export DOTFILES_DOCKER_INSTALL=true

bash $BASE_DIR/apt/install.pre.sh
bash $BASE_DIR/.dotfiles.debian.core/install.sh
bash $BASE_DIR/oh-my-zsh/config.sh
bash $BASE_DIR/others/config.sh