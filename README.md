# Sirupsen's Dotfiles

These are my dotfiles. Use them as you like! 

# Packages

My packages of choice relevant to these configurations.

* Terminal
  - Unicode Rxvt
* Shell
  - Bash
* Window Manager
  - Openbox
* Text editor
  - Vim
* Version control
  - Git

# Misc

## PS1

### Format

* Current directory
* Ruby version and Gemset (If not 1.9.2@default)
* Git branch (If in a Git repository)
    + Colors
        - Red (dirty tree, uncomitted changes)
        - Green (clear tree)

### Screenshot

![PS1](http://imgur.com/oCKTw.png)

# Using my Dotfiles

You can install my dotfiles easily with [Homesick][homesick]:

    homesick clone Sirupsen/dotfiles
    homesick symlink Sirupsen/dotfiles

## Keyboard layouts

I use a custom keyboard layout for my danish Apple keyboard, here's how to get it working in Linux:

    $ cd /usr/share/X11/xkb/symbols
    $ cp dk dk.backup
    $ cp latin latin.backup
    $ ln -s ~/.config/.dk_layout .
    $ ln -s ~/.config/.latin_layout .

## Syncing with Dropbox

If you have your own local dotfiles syncing across computers, here's a tip on how to sync your dotfiles.

Start by moving your dotfiles to your Dropbox, e.g. `~/Dropbox/dotfiles`.

I use [Homesick][homesick] to handle the symlinking for two reasons:

* I don't have to reinvent the wheel
* I can easily share my configuration
    - And get up and running remotely in a matter of seconds

We start by feeding `homesick` with our dotfiles:

    $ ln -s ~/Dropbox/dotfiles ~/.homesick/repos

And then we perform the linking:

    $ homesick symlink dotfiles

I advise you to push your dotfiles to Github as well, to share with others (and for your own use on virtual machines).

[homesick]: http://github.com/technicalpickles/homesick
