#!/bin/sh

docker build -t rmckaykm/doxygen:1.9.8-test -f src/Dockerfile-doxygen .

docker run --rm -it -v $(pwd):/home/build rmckaykm/doxygen:1.9.8-test apt list --installed
