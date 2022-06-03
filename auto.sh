#!/usr/bin/env sh



echo "git pull"
git pull origin main

echo "run python"
python test.py

echo "git add"
git add _post\\*.md


if [ $# -eq 0 ]; then
  COMMIT_MESSAGE="deploy"
else 
  COMMIT_MESSAGE=${1}
fi


git commit -m "${COMMIT_MESSAGE}"
echo "> commit complte"


git push origin HEAD:main
echo "> push complete"
