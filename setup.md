setup
=====

clone repo
-------------

```
cd ~

git clone https://github.com/KingFrige/myLinuxEnv.git
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
```

update modules
---------------

```
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
