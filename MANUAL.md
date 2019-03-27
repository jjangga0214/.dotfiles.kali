# maunal installation, configuration and upgrade

## .dotfiles.debian.core

First, see [.dotfiles.debian.core/MANUAL.md](.dotfiles.debian.core/MANUAL.md).

## vscode

After installing vscode(`apt install <vscode>.deb`), edit code shell file (`vi $(which code)`). **root** user need to specify `--user-data-dir` option, and this edition automatically apply it for convenience.

Add `CAN_LAUNCH_AS_ROOT=1` on top. Add `--user-data-dir=$HOME/.config/vscode` on last of bottom. refer [examples/code](examples/code).

```bash
# ...
CAN_LAUNCH_AS_ROOT=1
# ...
ELECTRON_RUN_AS_NODE=1 "$ELECTRON" "$CLI" "$@" --user-data-dir=$HOME/.config/vscode
# ...
```

## google-chrome

**root** user need to specify `--no-sandbox` option, and this edition automatically apply it for convenience.  

Add `--no-sandbox` on last of bottom. refer [examples/code](examples/google-chrome).

```bash
# ...
exec -a "$0" "$HERE/chrome" "$@" --no-sandbox
```

## upgrade

```bash
bash upgrade.sh
```