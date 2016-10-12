#!/bin/bash

PACKAGE_NAME=$1

PREFIX=$(python -c "import sys; print(sys.prefix)")
ANACONDA=$(which anaconda)

if [[ $ANACONDA_TOKEN == "" ]]; then
  ANACONDA_UPLOAD="$ANACONDA upload"
else
  echo Found token
  ANACONDA_UPLOAD="$ANACONDA -t $ANACONDA_TOKEN upload"
fi

if [[ -z $CHANNEL ]]; then
  if [[ "$TRAVIS_TAG" == v* ]]; then
    export CHANNEL="main"
  else
    export CHANNEL="dev"
  fi
fi

echo "Uploading to $CHANNEL"
$ANACONDA_UPLOAD --force --user csdms-stack --channel $CHANNEL \
  $PREFIX/conda-bld/**/$PACKAGE_NAME*bz2

echo "Done."
