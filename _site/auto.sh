#!/bin/bash


sourceDir = "C:\Users\gaga2/git/blog.io"

cd $sourceDir

echo "running Program"
printf %s $sourceDir


echo "add posts"
git add *.txt

echo "commit"
git commit -am "new post"

echo "push"
git push

read
