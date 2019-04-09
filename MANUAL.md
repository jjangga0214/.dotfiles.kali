# maunal installation, configuration and upgrade

## .dotfiles.debian.core

First, see [.dotfiles.debian.core/MANUAL.md](.dotfiles.debian.core/MANUAL.md).

## app image launcher

Download it from [here](https://github.com/TheAssassin/AppImageLauncher) if it's not preinstalled

## execute apps with non-root user

Some apps does not allow running it with **root**. Others force using unsafe options(e.g. `--no-sandbox` of _google-chrome_). To prevent this, use non-root user. Non-root user named **kali** is created through [others/kali.sh](others/kali.sh). Basic workaround is like below.

```bash
xhost si:localuser:kali # this can be called only once after system booting.
sudo -u kali -H <app> <--options>
```

So, the strategy is like below. 

1. let the xhost command executed automatically on booting. (See [#xhost](#xhost))
2. change Exec on .desktop files(on **/usr/share/applications** or `$HOME`**/.local/share/applications**). (See below sections)
3. set cli command aliases. ([oh-my-zsh/aliases.zsh])

### xhost

`xhost si:localuser:kali` is executed on system booting thanks to [others/init.sh](others/init.sh), which would be copied into **/etc/profile.d** by [install.sh](install.sh).

### alacarte

Set .desktop files `Exec` command through **alacarte** with convenience.

* google-chrome
* torbrowser-launcher
* vscode

### command aliases

* google-chrome: `chrome`
* torbrowser-launcher: `tor_`
* vscode: `code`

### notes

`code` is an aliaes for `code --user-data-dir ~/.config/vscode`. It is executed with privilege of **root** as it needs that.

## sync oh-my-zsh

```bash
bash oh-my-zsh.sync.sh
```

## upgrade

```bash
bash upgrade.sh
```

## resolve bugs

Apps installed through snap sometime doesn't start. `snapr`, which is defined in [oh-my-zsh/aliases.zsh](oh-my-zsh/aliases.zsh), temporarily resolves the bug only until shutting down the system.