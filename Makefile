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

clean:
	rm $(PAGES)

