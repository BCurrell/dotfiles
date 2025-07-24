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

rm -rf ~/.config/htop && ln -sn ~/dotfiles/config/htop ~/.config/htop
```
