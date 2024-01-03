#!/bin/bash
set -e

REPOSITORY="pgpbpadilla/pgpbpadilla.github.io"
ACTOR="pgpbpadilla"
BRANCH="gh-pages-ruby3"


# Check if deploy to same branch
if [[ "${REPOSITORY}" = "${GITHUB_REPOSITORY}" ]]; then
  if [[ "${GITHUB_REF}" = "refs/heads/${BRANCH}" ]]; then
    echo "It's conflicted to deploy on same branch ${BRANCH}"
    exit 1
  fi
fi

# Tell GitHub Pages not to run Jekyll
touch .nojekyll
[[ -n "$INPUT_CNAME" ]] && echo "$INPUT_CNAME" > CNAME

REMOTE_REPO="https://${ACTOR}:${TOKEN}@github.com/${REPOSITORY}.git"

echo "Deploying to ${REPOSITORY} on branch ${BRANCH}"
echo "Deploying to ${REMOTE_REPO}"

git config --global init.defaultBranch main && \
  git init && \
  git config user.name "${ACTOR}" && \
  git config user.email "${ACTOR}@users.noreply.github.com" && \
  git add . && \
  git commit -m "jekyll build from Action ${GITHUB_SHA}" && \
  git push --force $REMOTE_REPO main:$BRANCH && \
  (fuser -k .git || rm -rf .git) && \
  cd ..

PROVIDER_EXIT_CODE=$?
