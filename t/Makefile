RM ?= rm -f

T = $(wildcard *.t)

all: test

test: $(T)
	$(MAKE) clean

$(T):
	$(SHELL) $@ $(TEST_OPTS)

prove:
	prove $(T) :: $(TEST_OPTS)
	$(MAKE) clean

clean:
	$(RM) -r 'trash directory'.* test-results

.PHONY: all test $(T) clean
