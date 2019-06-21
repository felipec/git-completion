completionsdir := $(HOME)/.local/share/bash-completion/completions
sharedir := $(HOME)/.local/share/git-completion
zshfuncdir := $(sharedir)/zsh

all:

test:
	$(MAKE) -C test

D = $(DESTDIR)

install:
	install -d -m 755 $(D)$(zshfuncdir)
	install -m 644 git-completion.zsh $(D)$(zshfuncdir)/_git
	install -d -m 755 $(D)$(completionsdir)
	install -m 644 git-completion.bash $(D)$(completionsdir)/git
	install -d -m 755 $(D)$(sharedir)
	install -m 644 git-prompt.sh $(D)$(sharedir)/prompt.sh

.PHONY: all test install
