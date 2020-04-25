# serverless

[![Build Status](https://img.shields.io/docker/build/alexhayton/serverless)](https://hub.docker.com/repository/docker/alexhayton/serverless)

A [docker image](https://hub.docker.com/repository/docker/alexhayton/serverless) for running [serverless](https://serverless.com) commands.

This can be useful for building and deploying serverless stacks from CI environments.

## Example

```bash
docker pull alexhayton/serverless
docker run --rm alexhayton/serverless --version
```

## What's in the image

[circleci/node](https://hub.docker.com/r/circleci/node/)

The base image is ready to use with circleci. I have added AWS CLI and serverless to it.
