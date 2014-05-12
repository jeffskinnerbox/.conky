# Notes
In here are instructions on the creation, maintenance, and use of this repository
via [git][01] and [GitHub][02].  For more information, check out these posts:

* [Using Git and Github to Manage Your Dotfiles][03]
* [Managing dot files with Git][04]

Managing the Git Repository and GitHub

===
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
    git add <files>   (or git rm <files>)
    git commit -m "<message>"

### Updating the Remote (i.e. GitHub) Repository
To which shows you the URL that Git has stored for the shortname to for
the remote (GitHub) repository:

    git remote -v

Now to push your files to the GitHub repository

    git push -u origin master



[01]:http://git-scm.com/
[02]:https://github.com/
[03]:http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
[04]:http://blog.sanctum.geek.nz/managing-dot-files-with-git/
[05]:http://conky.sourceforge.net/config_settings.html
[06]:http://conky.sourceforge.net/variables.html
