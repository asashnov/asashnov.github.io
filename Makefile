# GNU make file for build pages

DIST_COMMON   := ChangeLog Makefile style img

SCRIPTS       := m4lib.inc filesize.sh imgsize.sh pagelink.sh 

SRCS          := $(shell ls *.m4)

PAGES         := $(addsuffix .md, $(basename ${SRCS}))

default: all

all: pages

pages: $(PAGES)

%.md : %.m4 $(SCRIPTS)
	m4 -P $< | sed '/^$$/ d' > $@

.PHONY: serve
serve: all
	docker run --rm --label=jekyll --volume=$(PWD):/srv/jekyll \
    -it -p 127.0.0.1:4000:4000 jekyll/jekyll:pages

clean:
	rm $(PAGES)

