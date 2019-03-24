# .dotfiles.kali

## project convention

* Most directories have **README.md**. Please refer them to get detail.
* If one can easily grasp role and effect of a certain script by just looking it, detail description is omitted in README.md.
* Most scripts and README.md do not care about specific upper level use. To know how a script is used(from 'client-side') in overall, one need to look at decription on higher level modules, which are close to project root.

## clone and placement

I prefer to place .dotfiles project under `$HOME` with name of **.dotfiles**. I even set `alias dot=cd ~/.dotfiles` on [jjangga0214/.dotfiles.oh-my-zsh](https://github.com/jjangga0214/.dotfiles.oh-my-zsh) which is used as git submodule of git submodule([jjangga0214/.dotfiles.debain.core](jjangga0214/.dotfiles.debian.core)) in this project.

```bash
git clone https://github.com/jjangga0214/.dotfiles.kali.git $HOME/.dotfiles && \
cd $HOME/.dotfiles && \
git submodule update
```

## automatic installation and configuration

Basically, this project is to automatically set preferable environment with ease. [install.sh](install.sh) is for that automation. This handles apt, snap, zsh, oh-my-zsh, node, nvm, go and so on. Also, it clones [jjangga0214/note](https://github.com/jjangga0214/note) to `$HOME`**/note**.

```bash
sudo bash install.sh
```