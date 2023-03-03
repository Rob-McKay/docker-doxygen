#!/bin/sh

docker build -t rmckaykm/doxygen:1.9.6-test -f src/Dockerfile-doxygen .

docker run --rm -it -v $(pwd):/home/build rmckaykm/doxygen:1.9.6-test apt list --installed
