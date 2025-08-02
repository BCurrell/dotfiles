# BCurrell/dotfiles

Collection of user configuration files for (mostly) Linux systems.

### Usage

- Clone this repository to your home directory
- Run the below commands:

```none
rm -rf ~/.profile && ln -sn ~/dotfiles/profile ~/.profile
rm -rf ~/.profile.d && ln -sn ~/dotfiles/profile.d ~/.profile.d

rm -rf ~/.bashrc && ln -sn ~/dotfiles/bashrc ~/.bashrc
rm -rf ~/.bashrc.d && ln -sn ~/dotfiles/bashrc.d ~/.bashrc.d

mkdir -p ~/.config

rm -rf ~/.config/git && ln -sn ~/dotfiles/config/git ~/.config/git
rm -rf ~/.config/htop && ln -sn ~/dotfiles/config/htop ~/.config/htop
rm -rf ~/.config/systemd && ln -sn ~/dotfiles/config/systemd ~/.config/systemd
```

### Where to put stuff

**.bashrc**

Sourced by Bash when an interactive shell is started, for example a terminal emulator.

Add anything specific to an interactive Bash shell. For example:

- Shell settings, including prompt
- Command aliases / functions

**.profile**

Sourced by most shells during login, including Bash if `.bash_profile` doesn't exist. A good home for configuring multiple shell types from 1 location. This also gets loaded by some display managers when running a desktop environment, however there is no standard for this so it is not guaranteed.

Add anything here that needs loading once and early. Since non-interactive shells don't load interactive shell configs (like `.bashrc`), add anything you may need in a non-interactive shell, like running a script. Some examples:

- Default shell settings
- `PATH` variable
- Other environment variables

If you wish to have your interactive shell settings in a standard login session, make sure to source your interactive configs from `.profile` as well.
