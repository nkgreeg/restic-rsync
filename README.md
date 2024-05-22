# Node.js docker image

![cover](cover/cover.svg)

## Purpose

Required to build another docker images with applications using Node.js

## Requirements

* [Docker](https://www.docker.com)
* [Docker buildx](https://github.com/docker/buildx)

## Packages

* [Restic](https://restic.net)
* [rsync](https://github.com/WayneD/rsync)
* [jq](https://pkgs.alpinelinux.org/package/edge/main/x86_64/jq)
* [curl](https://pkgs.alpinelinux.org/package/edge/main/x86_64/curl)
* [wget](https://pkgs.alpinelinux.org/package/edge/main/x86_64/wget)
* [OpenSSH](https://www.openssh.com)

## Setup

### Copy environment file

```shell
cp env.example env
```

### Check environment file

* `env`

### Set permissions

```shell
chmod u+x build push versions
```

## Build

```shell
./build
```

## Push image to registry

```shell
./push
```

## View packages versions

```shell
./versions
```

## Gitea actions

Variables

* `BASE_ACT_DOCKER_IMAGE` - Docker image that used to build this image
  e.g. `git.site.com/user/act:latest` or `ghcr.io/catthehacker/ubuntu:act-22.04`.
  It is possible to use the same image for assembly
* `CONTAINER_REGISTRY_DOMAIN` - Container Registry domain e.g. `git.site.com`

Secrets

* `CONTAINER_REGISTRY_PASSWORD` - Container Registry password e.g. `12345`.
  In Gitea API you can create access token.
  See `https://<CONTAINER_REGISTRY_DOMAIN>/user/settings/applications`
