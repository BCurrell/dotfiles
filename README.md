# BCurrell/dotfiles

Collection of user configuration files for (mostly) Linux systems.

### Usage

- Clone this repository to your home directory
- Run the below commands:

```none
ln -sn ~/dotfiles/profile ~/.profile
ln -sn ~/dotfiles/profile.d ~/.profile.d

ln -sn ~/dotfiles/bashrc ~/.bashrc
ln -sn ~/dotfiles/bashrc.d ~/.bashrc.d

mkdir -p ~/.config

rm -rf ~/.config/htop
ln -sn ~/dotfiles/config/htop ~/.config/htop
```
