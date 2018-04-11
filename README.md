# setup

Create a bare repo to track dotfiles.

```sh
git clone --bare https://github.com/stringparser/dotfiles.git code/dotfiles
```

Setup an alias to use git from that repository.

```sh
echo 'alias dit="/usr/bin/git --git-dir=$HOME/code/dotfiles --work-tree=$HOME"' >> $HOME/.zshrc
```

Since we are tracking the whole `$HOME` folder, let's skip untracked files

```sh
dit config --local status.showUntrackedFiles no
```

That's it. You can use that repo to track files across your system.

```sh
config add .eslintrc
config add .zshrc
```

There are some usage caveats (like path completion) you might also want to disable showing untracked files.

Reference links:
- [https://github.com/dvidelabs/config](https://github.com/dvidelabs/config)
- [https://news.ycombinator.com/item?id=11070797](https://news.ycombinator.com/item?id=11070797)
- [https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)

# TODO

- [ ] Make completion work (like git-extras)
