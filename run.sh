#!/bin/sh

# Always run commands from directory of this script
RELATIVE_ROOT=$(dirname $0)
cd $RELATIVE_ROOT

## @TODO save pid somewhere and run these in the background
case "$1" in
  "dev" )
    cd ./src
    python -m SimpleHTTPServer 8080
    ;;
  "sass" ) # Run SASS in watch mode
    sass --watch src/sass:src/css
    ;;
  "clean" )
    rm -rf ./.sass-cache/ ./dist/ ./src/styles .pid
    ;;
esac
