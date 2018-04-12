#!/bin/sh

# Test compilation with node-sass binary

mkdir -p tmp/node-sass
node-sass assets/stylesheets/_bootstrap-legacy.scss -o tmp/node-sass/bootstrap-legacy.css && \
node-sass assets/stylesheets/bootstrap-legacy/_theme.scss -o tmp/node-sass/bootstrap-legacy-theme.css || \
(echo "node-sass compilation failed" && exit 1)
