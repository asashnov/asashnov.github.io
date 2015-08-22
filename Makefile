# GNU make file for build pages

DIST_COMMON   := ChangeLog Makefile style img

SCRIPTS       := m4lib.inc filesize.sh imgsize.sh pagelink.sh 

SRCS          := $(shell ls *.m4)

PAGES         := $(addsuffix .html, $(basename ${SRCS}))

DIST_FILES    := $(SRCS) $(SCRIPTS) $(DIST_COMMON)

default: all

all: pages

pages: $(PAGES)

%.html : %.m4 $(SCRIPTS)
	m4 -P $< | sed '/^$$/ d' > $@

clean:
	rm -f *.html

check: pages
	for i in  $(PAGES) ; do tidy -eq $$i ; done

dist:
	echo "Warning: you must backup files dir separate"
	tar -czf homepage-`date '+%Y%m%d'`.tgz $(DIST_FILES)
