# serverless-circleci

[![Build Status](https://img.shields.io/docker/cloud/build/homeservenow/serverless-circleci)](https://hub.docker.com/repository/docker/homeservenow/serverless-circleci)

A [docker image](https://hub.docker.com/repository/docker/homeservenow/serverless-circleci) for running [serverless](https://serverless.com) commands.

This can be useful for building and deploying serverless stacks from CI environments.

## Example

```bash
docker pull homeservenow/serverless
docker run --rm homeservenow/serverless --version
```

## What's in the image

The image is optimised for use with circleci and boots in ~10 secs.

Base Image: [circleci/node](https://hub.docker.com/r/circleci/node/)

Plus:

* AWS CLI
* ECS CLI
* Serverless (installed as a global package)
