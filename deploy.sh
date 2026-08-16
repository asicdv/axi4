#!/usr/bin/env bash
# Push the site to GitHub. First run sets the remote; later runs just publish.
#   ./deploy.sh "message"
set -e

MSG="${1:-update}"

if [ ! -d .git ]; then
  echo "No git repo here yet."
  read -rp "GitHub repo URL (e.g. https://github.com/you/axi4.git): " URL
  git init
  git branch -M main
  git remote add origin "$URL"
fi

git add -A
git commit -m "$MSG" || { echo "Nothing to commit."; exit 0; }
git push -u origin main

echo
echo "Pushed. If this is the first time, enable Pages:"
echo "  Settings -> Pages -> Deploy from a branch -> main -> / (root)"
