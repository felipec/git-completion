fakedir = ../contrib/completion/

RM ?= rm -f

T = $(wildcard *.t)

all: test

test: $(T)
	$(MAKE) clean

$(T): | $(fakedir)
	$(SHELL) $@ $(TEST_OPTS)

prove: | $(fakedir)
	prove $(T) :: $(TEST_OPTS)
	$(MAKE) clean

$(fakedir):
	mkdir -p $@
	ln -s ../../git-prompt.sh $@
	ln -s ../../git-completion.bash $@

clean:
	$(RM) -r 'trash directory'.* test-results

.PHONY: all test $(T) clean
