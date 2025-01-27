# About this setup

Welcome to my setup!

I utilize 2 machines for what I do:
1. My laptop which is a Macbook Pro that I use for development remotely.
2. My primary machine however, is a dual-boot Windows/Linux machine that I use for gaming and development.

I use arch btw. lol

This repo is a collection of the dotfiles that are used to configure my machines so my digital workstations are more in sync with one another for work-related stuff.

## Quick Description of my setup for my Arch Linux machine

> [!Note]
> My Arch part of the PC has 3 different ways of logging in as a user:
> 1. Awesome WM (where I configured it from the bottom up)
> 2. KDE Plasma 6 (Wayland)
> 3. KDE Plasma 6 (X11)

- OS: Arch
- Window Manager: Awesome, KWin
- Widgets: Rofi(?)
- Notifications: Rofi(?)
- Shell: Zshell
- Terminal: WezTerm + tmux
- Editor: Neovim
- File Manager: Dolphin
- Status Bar: Polybar (?)
- Keyboard layout: QWERTY, (currently learning DVORAK)
- Browser: Floorp, Brave

## Demo

***
Insert screenshots and video of setup in use. might wanna show on the diff OS
***

# REQUIREMENTS 

>[!Note]
>I use GNU Stow for managing these files.

1. [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) must be installed 
2. [zshell](https://wiki.zshell.dev/) is my shell of choice
3. [Wezterm](https://wezfurlong.org/wezterm/index.html) is a fun and cool [terminal emulator](https://en.wikipedia.org/wiki/Terminal_emulator)
4. [neovim](https://neovim.io/) is the code/text editor of choice
5. [gnu stow](https://www.gnu.org/software/stow/) is the way that I'm using this repo. 
    1. basically it handles all the [symlinks](https://en.wikipedia.org/wiki/Symbolic_link)
    2. by making a copy of the path from `$HOME`
    3. and allows me to edit either copy and have them reflected both in the git repo, and live.
    - eg. `.zshrc` gets copied from the repo into the path `~/.zshrc`. Any change reflected in either gets shown in the other.
6. Depending on your OS you may have to perform additional steps:
    - eg. for MacOS make sure you have installed XCode and agreed to the license agreement
7. Besides the OS specific steps there are additional steps for setup depending on what parts of the repo you're interested in.

## Neovim:

For neovim, you will need the following dependencies to get the plugins running.

- [npm](https://www.npmjs.com/) for things regarding javascript and typescript (generally speaking)
- [pip](https://pip.pypa.io/en/stable/installation/) and [python](https://www.python.org/downloads/)
    - Usually pip comes installed with the newer versions of python (2.7.9+ and 3.4.0+)
    - However, there are ways to install [pip independently](https://pip.pypa.io/en/stable/installation/)
- rust, but more specifically [cargo](https://doc.rust-lang.org/cargo/)
- [go](https://go.dev/doc/install)

> [!Note]
> For a default standard configuration you will also need krabby for the dashboard!

Krabby is a program that prints a pixelart pokemon to the terminal which I use on the dashboard for neovim.
You can read the documentation for downloading it [here](https://github.com/yannjor/krabby)

### Configuration

I use [lazy](https://github.com/folke/lazy.nvim) for managing packages in neovim.
It is super simple to use which was great for me as I transitioned into using Neovim.
For individual plugins, see the [list of plugins](https://github.com/EZRA-DVLPR/dotfiles/tree/main/.config/nvim/lua/plugins) within the repo.

> [!Tip]
> The majority of the files within the [plugins folder](https://github.com/EZRA-DVLPR/dotfiles/tree/main/.config/nvim/lua/plugins) are singleton packages. 
> However, not all are!
> eg. The `lsp-conf.lua` file contains many packages that are all related to the configuration of LSPs.
> Be aware that some packages exclude dependencies because these dependencies are already considered in other packages as well.
> Make sure to look at the documentation of the individual package to ensure a proper install.

## Font:

I use [Maple Mono](https://github.com/subframe7536/maple-font) as my font for everything.
If you want to download the config and use as is, make sure to download the font and then apply it to your terminal.

# Showcase

***
Insert screenshots and video of setup in use. might wanna show on the diff OS
***

# Contributing

I use this for myself and modify it based on my needs.
If you happen to find any bugs/inconsistencies/errors, please feel free to report an issue or make a PR.

# Tip Jar

Donations for those who want to give.
I share my stuff for the love of it, free of cost.
If you choose to support me, then I offer you my humblest gratitude and wish you a lovely day!

`Donation links here!`

