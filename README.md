# NPM Versions Image

Images for getting the versions for npm packages.

## Build

```docker build --build-arg NODE_VERSION=7.68.0 -t leonyork/npm-versions .```

## Test

```docker run leonyork/npm-versions mkdirp```