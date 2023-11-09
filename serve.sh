#!/bin/sh

# Install Docker: https://docs.docker.com/engine/installation/
# Get the container:  docker pull jekyll/jekyll:pages
# https://github.com/jekyll/docker/wiki
# https://github.com/jekyll/docker/wiki/Usage:-Running
docker run \
  --rm -it \
  -p 127.0.0.1:4000:4000 \
  --label=jekyll \
  --volume=$(PWD):/srv/jekyll \
  jekyll/jekyll:pages

# Jekyll documentation:
# docker run --rm -it --label=jekyll-docs -p 127.0.0.1:4000:4001 jekyll/jekyll:pages_docs
