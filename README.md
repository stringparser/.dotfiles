# setup

The idea is really simple.

Instead of using symlinks (in order to keep files versioned from one folder) you can create a bare repo to track the dotfiles.

```sh
git init --bare $HOME/code/dotfiles
```

Then you can setup an alias to use git directly from that repository.

```sh
echo 'alias config="/usr/bin/git --git-dir=$HOME/code/dotfiles --work-tree=$HOME"' >> $HOME/.zshrc
```

That's it. Then refresh, or open a new terminal, and you can use that repo to track files across your system.

```sh
config add .eslintrc
config add .zshrc
```

There are some usage caveats (like path completion) you might also want to disable showing untracked files.

```sh
config config --local status.showUntrackedFiles no
```

If you want to use the files listed here do

```sh
git clone https://github.com/stringparser/dotfiles.git code/dotfiles
```

And add the alias to your bashrc/zshrc file

```sh
alias config="/usr/bin/git --git-dir=$HOME/code/dotfiles --work-tree=$HOME"
```

> Initial technique to store dot files found here:
>
> [https://news.ycombinator.com/item?id=11070797](https://news.ycombinator.com/item?id=11070797)
>
> More elaborate blog post here:
>
> [https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
