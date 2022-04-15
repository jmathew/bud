#!/bin/bash

set -e

: ${1?' You forgot to supply a package directory'}

package="$1"
tmpDir="${package}_tmp"

if test -d "$tmpDir"; then
  rm -rv "$tmpDir"
fi

mkdir -pv "$tmpDir"

cd "packages/$package"
pwd
yarn
yarn build

cp -rv ./dist package.json "$tmpDir"

cd -
