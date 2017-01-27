prefix  := /usr/local
bin     := $(prefix)/bin

scripts := qalign

install:
	@install -dv $(bin)
	@install -cv $(scripts) $(bin)

uninstall:
	@rm -v $(patsubst %,$(bin)/%,$(scripts)) \
		| perl -pe 'print "rm: "'
