[![docker](https://img.shields.io/badge/docker-kaelz%2Ftiller-brightgreen.svg)](https://hub.docker.com/r/kaelz/tiller/)

# kaelz/tiller

Rewrap the `gcr.io/kubernetes-helm/tiller` to cross the WALL.

For some reasons, image `gcr.io/kubernetes-helm/tiller` could not be pulled somewhere in the world.

## Usage

```sh
helm init \
  --tiller-image kaelz/tiller:2.9.1 \
  --stable-repo-url https://charts.ostai.ai/stable
```

## Dev

build:

```sh
npm run build
```

publish:

```sh
npm run publish
```
