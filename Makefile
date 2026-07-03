# remember Make wants tabs at the start of every recipe
PREFIX = $(PWD)/site
LOCALBIN := $(PWD)/bin
SUBDIRS = deps/lowdown deps/sblg
POSTSDIR = $(PWD)/posts
TEMPLATES = $(PWD)/templates

.PHONY: build git-submodules all $(SUBDIRS)

install: git-submodules $(SUBDIRS)

all: install build

$(SUBDIRS):
	echo "INFO: Configure, Build & Install Dependencies";
	cd $@ && ./configure --prefix=$(LOCALBIN)
	$(MAKE) -C $@
	$(MAKE) -C $@ install

git-submodules:
	@if git submodule status | grep -q -e '^[-+]' ; then \
		echo "INFO: Init & Update Submodules"; \
		git submodule update --recursive --init; \
	fi

post:
	$(EDITOR) $(subst $(t)

serve:
	python3 -m http.server

build:
	lowdown --html-no-skiphtml --html-no-escapehtml
