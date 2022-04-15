# bud

# Yarn procedure
```sh
yarn set version stable
yarn init
yarn add typescript
yarn tsc --init
yarn dlx @yarnpkg/sdks vscode
```

# Installation in target
```sh
# Remove first if installed already.
$ yarn remove bud

$ yarn add bud@git@github.com:jmathew/bud.git
```

Also remember to restart typescript server!


https://2ality.com/2021/07/simple-monorepos.html#a-better-solution%3A-npm-workspaces-and-typescript-project-references