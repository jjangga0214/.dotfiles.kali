BASE_DIR=$(dirname "$0")

bash $BASE_DIR/apt/install.pre.sh
bash $BASE_DIR/.dotfiles.debian.core/install.sh
bash $BASE_DIR/apt/install.post.sh
bash $BASE_DIR/oh-my-zsh/config.sh
bash $BASE_DIR/others/kali.sh
bash $BASE_DIR/others/torbrowser-launcher.sh
cp $BASE_DIR/others/init.sh /etc/profile.d