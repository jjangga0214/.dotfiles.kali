# :warning: CAUTION

## general

* Every execution, installation, configuration is only tested on kali-rolling.
* Git submodules are used.
  * Create or checkout a branch when making commit on them.
  * Check their CAUTIONS (if existing) as well.
    * [.dotfiles.debian.core/CAUTION.md](.dotfiles.debian.core/CAUTION.md)

## specific

[install.sh](install.sh) internally executes the following scripts. So, before executing [install.sh](install.sh), be careful of cautions below.

### [apt/install.pre.sh](apt/install.pre.sh)

This literally only works with **apt**. `apt` is used instead of `apt-get`.