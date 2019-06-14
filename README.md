[![docker](https://img.shields.io/badge/docker-kaelz%2Ftiller-brightgreen.svg)](https://hub.docker.com/r/kaelz/tiller/)

# kaelz/tiller

Rewrap the `gcr.io/kubernetes-helm/tiller` to cross the WALL.

For some reasons, image `gcr.io/kubernetes-helm/tiller` could not be pulled somewhere in the world.

## Usage

```sh
helm init \
  --tiller-image kaelz/tiller:2.14.1 \
  --stable-repo-url https://charts.ost.ai
```

## Trouble Shooting

If encounter the following errors:

### Error: could not find a ready tiller pod

```sh
$ helm install stable/nginx-ingress

Error: could not find a ready tiller pod
```

### Tiller-deploy ImagePullBackOff

```sh
$ kubectl get pods --namespace kube-system

NAME                               READY     STATUS             RESTARTS   AGE
kube-dns-3162619857-vdw62          3/3       Running            0          131d
l7-lb-controller-493883185-75swh   1/1       Running            0          131d
tiller-deploy-2838256982-6w0kv     0/1       ImagePullBackOff   0          18h
```

## Solution

```sh
helm init \
  --tiller-image kaelz/tiller:2.14.1 \
  --upgrade
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
