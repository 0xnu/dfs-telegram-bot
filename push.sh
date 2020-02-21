#!/usr/bin/env bash
#chmod +x push.sh && ./push.sh
#
# created by Finbarrs Oketunji at 2020/2/10
#

echo "=============================="
echo "====removing useless files===="
echo "=============================="

rm -rf .git
rm *~
rm *.log
rm *.aux
rm *.out

echo "================================"
echo "==reinitialize git repository==="
echo "================================"

git init
git remote add origin git@github.com:0xnu/dfs-telegram-bot.git

echo "=============================="
echo "======committing changes======"
echo "=============================="

git add *
git add .gitignore
git stage *
git commit -s -m "$(date "+%Y-%m-%d %H:%M:%S")" >> commit.log
git gc >> git-gc.log

echo "=============================="
echo "=====pushing, please wait====="
echo "=============================="

git push --force origin HEAD
git status

echo "=============================="
echo "========🤖 all tasks done====="
echo "=============================="

rm *.log