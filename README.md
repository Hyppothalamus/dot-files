# DOT-FILES

## installation

### requirements

* i3
    * i3-gaps
    * i3bars
    * i3lock-color
* neovim
* tmux
* fishs shell

git clone this in a bare repo
```bash
git clone --recurse-submodules --bare https://github.com/Hyppothalamus/dot-files.git $HOME/.cfg
```
make and alias to control the repo
```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
and finally checkout the branch
```bash
config checkout
```
