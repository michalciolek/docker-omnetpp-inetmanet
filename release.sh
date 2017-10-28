#!/bin/bash

version=`cat VERSION`
echo "version: $version"

# tag it
git add -A
git commit -m "version $version"
git tag -a "$version" -m "version $version"
git push
git push --tags
