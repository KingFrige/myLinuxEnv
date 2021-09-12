setup
=====

clone repo
-------------

```
# debian/ubuntu
sudo apt install bash-completion

cd ~
git clone https://github.com/KingFrige/myLinuxEnv.git
git clone https://github.com/gpakosz/.tmux
```

link config
-------------

```
cd myLinuxEnv

# bash
## update user-name
sed "s/korben/`whoami`/g" `grep korben -rl bash`
## link
ln -s ~/myLinuxEnv/bash/bashrc ~/.bashrc

# git
## NOTE: update info
ln -s ~/myLinuxEnv/git/git-config ~/.gitconfig

# vim

ln -s ~/myLinuxEnv/vim/vimrc ~/.vimrc
ln -s ~/myLinuxEnv/vim/gvimrc ~/.gvimrc

# tmux

ln -s ~/.tmux/.tmux.conf ~/.tmux.conf
```

update modules
---------------

```
grep -lr "\/opt" | xargs sed 's/\/opt/\/home\/korben\/tools/' -i

modulefiles/
├── eda
├── gcc
├── go
├── java
├── node
├── openssl
├── python
├── qt
├── riscv-toolchian
├── rust
├── sbt
├── scala
├── texlive
├── tmux
├── wake
└── wit
```
