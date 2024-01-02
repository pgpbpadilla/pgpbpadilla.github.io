#!/usr/bin/env bash

pushd org/jekyll/

./install_deps.sh

bundle exec jekyll build

popd


