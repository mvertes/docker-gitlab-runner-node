# docker-gitlab-runner-node

A docker running gitlab-ci runner in node, able to npm install, test, etc.

The image contains a full compilation chain (g++, make, python) in addition to NodeJS.

This repository contains Dockerfile for [gcr](https://github.com/evanlucas/gcr) container,
based on the [Alpine](https://hub.docker.com/_/alpine/) image.

## Install

As a prerequisite, you need [Docker](https://docker.com) to be installed.

To download this image from the public docker hub:

	$ docker pull mvertes/gitlab-runner-node

To re-build this image from the dockerfile:

	$ docker build -t mvertes/gitlab-runner-node .

## Usage

The first time, run in interactive to provide the gitlab server url and registration token:

```
$ docker run -ti --restart unless-stopped --name gitlab-runner-node mvertes/gitlab-runner-node
[?] Please enter your GitLab CI url: http://gitlab-example.com/ci
[?] Please enter your GitLab CI Registration Token: XXXXXXXXXXXX
gcr info [client] checking for builds...
gcr http 404 http://gitlab-example.com/ci/api/v1/builds/register.json
gcr info [client] checking for builds...
```

You can then detach by pressing `CRTL-P` `CTRL-Q`.

## License

[MIT](license)
