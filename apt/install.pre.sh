BASE_DIR=$(dirname "$0")

apt update && apt upgrade

apt install -y ibus-hangul
apt install -y openvpn network-manager-openvpn network-manager-openvpn-gnome
# apt install -y alacarte
apt install -y torbrowser-launcher
