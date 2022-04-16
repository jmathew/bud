# bud

# Yarn procedure
```sh
yarn set version stable
yarn init
yarn add typescript
yarn tsc --init
yarn dlx @yarnpkg/sdks vscode
```

# Adding cross dependency
Add the other project to the `package.json` with format `"@bud/other": "workspace:*"`
Make sure to add `references` in tsconfig to the other project. Otherwise TS won't know about it.

# Doing a release
```sh
cd packages/bud-core
yarn build-arc
git tag -a bud-core-1.0.0 -m "Release bud-core"
git push --tags
```
Take the gz generated and create a new github release with it and set the tag to the newly created tag. The source code on the releases page is the whole repo but that can be ignored.

# Installation in target
Use the url from the latest release of the desired package.
```sh
yarn add bud-core@https://github.com/jmathew/bud/releases/download/bud-core-1.0.0/bud-core-1.0.0.tar.gz
```

Also remember to restart typescript server!


# Resources
* [Repo](https://github.com/jmathew/bud)
* [Yarn repo. This is a mono-repo that can be used as reference](https://github.com/yarnpkg/berry)
* [Blog. Setup monorepo and workspaces](https://2ality.com/2021/07/simple-monorepos.html#a-better-solution%3A-npm-workspaces-and-typescript-project-references)
* [Blog. Setup monorepo with github releases](https://dev.to/riywo/using-github-release-for-patching-monorepo-npm-package-4k7a)
* [NPM Workspaces documentation](https://docs.npmjs.com/cli/v8/using-npm/workspaces)
* [Alternative monorepo approach](https://www.youtube.com/watch?v=_r4emDWlApA)
# TODO
Add each package as release to github targz. Then use that instead of the crazy building script.

Test release again. Particularly with bud-electron.