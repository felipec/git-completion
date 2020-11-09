setopt zle
setopt list_rows_first

PS1="<PROMPT>"
fpath=($ZDOTDIR $fpath)
LISTMAX=1000

autoload -U compinit && compinit -u

zstyle ':completion:*:*:git:*' script "$SRC_DIR/git-completion.bash"
zstyle ":completion:*:default" list-colors "no=<NO>" "fi=<NO>" "di=<NO>" "sp=<SP>" "lc=<LC>" "rc=<RC>" "ec=<EC>\n"
zstyle ':completion:*' verbose no

zle_complete () {
	zle list-choices
	zle kill-whole-line
	print "<END-CHOICES>"
}
zle -N zle_complete
bindkey "^I" zle_complete

functions[_default]=:
