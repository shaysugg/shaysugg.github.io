#!/bin/bash

bundle exec jekyll build
rm -rf ../prod-myblog/shaysugg.github.io/*
cp -r _site/* ../prod-myblog/shaysugg.github.io/
cd ../prod-myblog/shaysugg.github.io/
git add .
git commit -m "Update site"
git push -u origin main
