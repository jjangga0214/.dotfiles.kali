# :warning: CAUTION

## general

* Every execution, installation, configuration is only tested on kali-rolling.
* Git submodules are used.
  * Create or checkout a branch when making commit on them.
  * Check their CAUTIONS (if existing) as well.
    * [.dotfiles.debian.core/CAUTION.md](.dotfiles.debian.core/CAUTION.md)

## environment variables

You can export env vars to override default. Every env var has default value and respects exported value over default.

(type, default value, source file)

* `$DOTFILES_DOCKER_DEBIAN_RELEASE` (string, `"stretch"`, [apt/docker.sh](apt/docker.sh)): debian version to specify while installing docker. This is independent from variable of same name `$DOTFILES_DOCKER_DEBIAN_RELEASE` used in [.dotfiles.debian.core/apt/docker.sh](.dotfiles.debian.core/apt/docker.sh).

## startup

### startup commands

See [others/init.sh](others/init.sh) and [others/config.sh](others/config.sh).

### startup services

Services below are auto-started on booting by `systemctl enable <service>`.

* docker: see [apt/docker.sh](apt/docker.sh)
* snapd: see [apt/install.post.sh](apt/install.post.sh)

## specific

[install.sh](install.sh) internally executes the following scripts. So, before executing [install.sh](install.sh), be careful of cautions below.

### apt/\*.sh

They literally only works with **apt**. `apt` is used instead of `apt-get`.