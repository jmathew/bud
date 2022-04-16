#!/bin/bash

set -e

: ${1?' You forgot to supply a package directory'}

package="$1"
tmpDir="tmp_${package}"

if test -d "$tmpDir"; then
  rm -rv "$tmpDir"
fi

mkdir -pv "$tmpDir"

cd "packages/$package"
pwd
yarn
yarn build

cp -rv ./dist package.json "../../$tmpDir"

cd -

git checkout "$package"

# Clear old files
rm -r dist/
rm package.json

# Extract updated ones.
mv -v "$tmpDir"/* ./
rmdir "$tmpDir"
rm -r packages/
rm -r .yarn/

# Add the updated files.
git add dist/ package.json
git status
git diff --cached

# Commit and push.
git commit -m "Update $package"
git push

# Go back.
git checkout main

echo "DONE"