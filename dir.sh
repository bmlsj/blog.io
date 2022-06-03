#!/usr/bin/env sh

korean=$(<./directory\\korean.txt)
upstream=$(<./directory\\upstream.txt)


echo "$korean"
echo "$upstream"
echo "$working_dir"

git checkout -b result

echo "git clone repo"
git clone "$korean"


echo "copy python script"
cp git_diff.py \Web-Dev-For-Beginners


echo "cd working directory"
cd ./Web-Dev-For-Beginners


echo "add upstream"
git remote add upstream "$upstream"

echo "check repo"
git remote -v


echo "fetch upstream"
git fetch "$upstream"


# upstream branch
echo "git checkout to upstream"
git checkout -b upstream


echo "run git_diff.py"
python git_diff.py main upstream

echo "in post"
cp report_tree.md ../_posts
