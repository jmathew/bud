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

$ yarn add bud-core@git@github.com:jmathew/bud.git#bud-core
```

Also remember to restart typescript server!


# Resources
* [Blog. Setup monorepo and workspaces](https://2ality.com/2021/07/simple-monorepos.html#a-better-solution%3A-npm-workspaces-and-typescript-project-references)
* [Blog. Setup monorepo with github releases](https://dev.to/riywo/using-github-release-for-patching-monorepo-npm-package-4k7a)
* [NPM Workspaces documentation](https://docs.npmjs.com/cli/v8/using-npm/workspaces)

# TODO
Add each package as release to github targz. Then use that instead of the crazy building script.
