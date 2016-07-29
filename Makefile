# GNU make file for build pages

DIST_COMMON   := ChangeLog Makefile style img

default: serve

.PHONY: serve
serve:
	# Install Docker: https://docs.docker.com/engine/installation/
	# Get the container:  docker pull jekyll/jekyll:pages
	# https://github.com/jekyll/docker/wiki
	# https://github.com/jekyll/docker/wiki/Usage:-Running
	docker run --rm --label=jekyll --volume=$(PWD):/srv/jekyll \
    -it -p 127.0.0.1:4000:4000 jekyll/jekyll:pages

jekyll-docs:
	docker run --rm --label=jekyll-docs -it -p 127.0.0.1:4000:4000 \
	  jekyll/jekyll:pages_docs
