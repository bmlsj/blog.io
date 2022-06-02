#!/usr/bin/env sh

echo "git pull"
git pull origin main

echo "run python"
python test.py

echo "git add"
git add .


if [ $# -eq 0 ]; then
  COMMIT_MESSAGE="auto"
else 
  COMMIT_MESSAGE=${1}
fi


git commit -m "${COMMIT_MESSAGE}"
echo "> commit complte"


git push origin HEAD:main
echo "> push complete"
