# About this setup

Welcome to my setup!

I utilize 2 machines for what I do:
1. My laptop which is a Macbook Pro that I use for development remotely.
2. My primary machine however, is a dual-boot Windows/Linux machine.

I use arch btw. lmao

This repo is a collection of the dotfiles that are used to configure my machines so they are more in sync with one another for work.

## Quick Description of my setup for my Arch Linux machine

> [!Note]
> My Arch setup uses 3 types of ways to use the PC:
> 1. With Awesome WM where I configured it from the bottom up
> 2. With KDE Plasma 6 (Wayland)
> 3. With KDE Plasma 6 (X11)

- OS: Arch
- Window Manager: Awesome, KWin
- Widgets: Rofi(?)
- Notifications: Rofi(?)
- Shell: Zshell
- Terminal: Alacritty + tmux
- Editor: Neovim
- File Manager: Dolphin
- Status Bar: Polybar (?)
- Keyboard layout: QWERTY, (Soon to be DVORAK)
- Browser: Floorp, Brave

## Demo

***
Insert screenshots and video of setup in use. might wanna show on the diff OS
***

# REQUIREMENTS 

>[!Note]
>I use GNU Stow for managing these files.

1. [git][https://git-scm.com/book/en/v2/Getting-Started-Installing-Git] must be installed 
2. [zshell][https://wiki.zshell.dev/] is my shell of choice
3. [Alacritty][https://alacritty.org/] is a fun and cool [terminal emulator][https://en.wikipedia.org/wiki/Terminal_emulator]
3. [neovim][https://neovim.io/] is the code/text editor of choice
4. [gnu stow][https://www.gnu.org/software/stow/] is the way that I'm using this repo. 
    1. basically it handles all the [symlinks][https://en.wikipedia.org/wiki/Symbolic_link]
    2. by making a copy of the path from `$HOME`
    3. and allows me to edit either copy and have them reflected both in the git repo, and live.
    eg. `.zshrc` gets copied from the repo into the path `~/.zshrc`. Any change reflected in either gets shown in the other.
5. Depending on your OS you may have to perform additional steps:
    eg. for MacOS make sure you have installed XCode and agreed to the license agreement
6. Besides the OS specific steps there are additional steps for setup depending on what parts of the repo you're interested in.

## Neovim:

For neovim, you will need the following dependencies to get the plugins running.

- npm for things regarding javascript and typescript (generally speaking) [learn more about npm here][https://www.npmjs.com/]
- pip (and python) for certain packages [see how to install python and pip here][https://pip.pypa.io/en/stable/installation/]
    - Usually pip comes installed with the newer versions of python (2.7.9+ and 3.4.0+)
    - However, there are ways to install [pip independently][https://pip.pypa.io/en/stable/installation/]
- rust (cargo specifically) [learn more about cargo here][https://doc.rust-lang.org/cargo/]
- go [learn more about go here][https://go.dev/doc/install]

> [!Note]
> For a default standard configuration you will also need a program called krabby for the dashboard!

Krabby is a program that prints a pixelart pokemon to the terminal which I use on the dashboard for neovim.
You can read the documentation for downloading it [here][https://github.com/yannjor/krabby]

### Configuration

I use [lazy][https://github.com/folke/lazy.nvim] for managing packages in neovim.
It is super simple to use which was great for me as I transitioned into using Neovim.
For individual plugins, see the [list of plugins][https://github.com/EZRA-DVLPR/dotfiles/tree/main/.config/nvim/lua/plugins].
Within each file there are 1+ plugins.

> [!Tip]
> The majority of the files within the [plugins folder][https://github.com/EZRA-DVLPR/dotfiles/tree/main/.config/nvim/lua/plugins] are singleton packages. 
> However, not all are!
> eg. The `lsp-conf.lua` file contains many packages that are all related to the configuration of LSPs.
> Be aware that some packages are exluding dependencies because these dependencies are already considered in other packages as well.
> Make sure to look at the documentation of the individual package to ensure a proper install.

## Font:

I use [Maple Mono][https://github.com/subframe7536/maple-font] as my font for everything.
I absolutely love the style it has.
It's extremely customizable, and has this great way of flowing between letters.
It's also easy to read.
It also has this cool cursive writing effect when certain conditions are met (eg. comments, function definitions, etc.).
It also mimics how I write in real life, which is a mixture of cursive and print.

If you want it to work seamlessly, make sure to download the font and then apply it to your system wherever I put it.

# Contributing

I use this for myself and slightly modify it based on my needs.
If you happen to find any bugs/inconsistencies/room for misinterpretation, please feel free to report an issue or offer a PR.

# Tip Jar

Donations for those who want to give.
I share my stuff for the love of it, free of cost.
If you choose to support me, then I offer you my humblest gratitude and wish you a lovely day!

Donation links here!

# Showcase

***
Insert screenshots and video of setup in use. might wanna show on the diff OS
***
