<!--
Maintainer:   jeffskinnerbox@yahoo.com / www.jeffskinnerbox.me
Version:      1.0.4
-->

# Notes
In here are instructions on the creation, maintenance, and use of this repository
via [git][01] and [GitHub][02].  For more information, check out these posts:

* [git - the simple guide](http://rogerdudler.github.io/git-guide/)
* [Using Git and Github to Manage Your Dotfiles][03]
* [Managing dot files with Git][04]
* [The most useful git commands](https://orga.cat/posts/most-useful-git-commands)
* [git - the simple guide just a simple guide for getting started with git. no deep shit ;)](http://rogerdudler.github.io/git-guide/)
* [Useful tricks you might not know about Git stash](https://medium.freecodecamp.org/useful-tricks-you-might-not-know-about-git-stash-e8a9490f0a1a)
* [Git Tutorial](http://fab.cba.mit.edu/classes/4.140/doc/git/)
* [What is git?](http://fab.cba.mit.edu/classes/863.16/doc/tutorials/version_control/index.html)
* [The most useful git commands](https://orga.cat/posts/most-useful-git-commands)

## Managing the Git Repository and GitHub
====
### Install Conky Package
To install Corky

    sudo apt-get install conky-std

You'll use the [Corky Config Settings][05] to describe general features of how you want your Conky to appear,
and the [Corky Variables][06] to define what actually gets displayed.

### Creating the GitHub Repository
Goto GitHub and create the new repository

    goto https://github.com/jeffskinnerbox
    <create empty repository called 'dotconky'>

### Creating the Local Git Repository
Make the .conky directory, move into it, and initialize it as a git repository

    cd ~
    mkdir .conky
    cd .conky
    git init
    <Create a README>
    git add .
    git commit -m 'Initial creation of conky scripts for Linux box'

### Loading the GitHub Repository for the First Time
Within the ~.conky directory, use git to load the files to GitHub

    cd ~/.conky
    git remote add origin https://github.com/jeffskinnerbox/dotconky.git
    git push -u origin master

### Updating the Local Git Repository
Within the .vim directory, do a "get status" to see what will be included in the commit,
add files (or remove) that are required, and then do the commit to the local git repository.

    git status
    git add --all
    git commit -m "<comment>"

### Updating the Remote (i.e. GitHub) Repository
To which shows you the URL that Git has stored for the shortname to for
the remote (GitHub) repository:

    git remote -v

Now to push your files to the GitHub repository

    git push -u origin master

### Retrieving Update From Remote Repository (i.e. GitHub)
To retrieve these updates on another system, use

    git pull origin master

To overwrite everything in the local directory

    git fetch --all
    git reset --hard origin/master

Explanation: `git fetch` downloads the latest from remote without trying to merge or rebase anything.
Then the `git reset` resets the master branch to what you just fetched.
The `--hard` option changes all the files in your working tree to match the files in `origin/master`.
If you have any files that are _not_ tracked by Git,
these files will not be affected.



[01]:http://git-scm.com/
[02]:https://github.com/
[03]:http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
[04]:http://blog.sanctum.geek.nz/managing-dot-files-with-git/
[05]:http://conky.sourceforge.net/config_settings.html
[06]:http://conky.sourceforge.net/variables.html
