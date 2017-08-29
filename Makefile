#! /usr/bin/make -f
SHELL=/bin/sh

DESTDIR?=/usr/local
prefix?=${DESTDIR}
EXEC_FILES=\
	bin/elixir \
	bin/iex \
	bin/mix

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	docker-compose build
	install -d -m 0755 $(prefix)/bin
	install -m 0755 $(EXEC_FILES) $(prefix)/bin

uninstall:
	docker inspect --type=image elixirdocker_elixir &> /dev/null && docker rmi elixirdocker_elixir || true
	test -d $(prefix)/bin && \
	cd $(prefix) && \
	rm -f $(EXEC_FILES)
