#!/bin/bash

git submodule update --depth --  docs.nextjs.com

rm -rf ./docs
cp -R docs.nextjs.com/content ./docs
mkdir ./docs/assets
cp ./docs.nextjs.com/src/assets/*.png ./docs/assets

find ./docs -name '*.md' -exec sed -i '' -e 's/src="\/assets/src="\.\/assets/g' {} \;

