HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch notify
unsetopt autocd beep
bindkey -v

zstyle :compinstall filename '/home/ezra-dvlpr/.zshrc'

autoload -Uz compinit
compinit

PROMPT='%/ % :: '

if [[ $(uname) == "Darwin" ]]; then
	#if macos, then make sure to add pip to path
	if [ -f "$HOME/.env" ]; then
    	source "$HOME/.env"
  	fi
	PATH="$PYTHON_PATH:$PATH"
	#add WezTerm to path too
	PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"
	#add fyne to path
	PATH=$PATH:$(go env GOPATH)/bin
	export PATH
else 
	echo "Not MacOS!"
fi
