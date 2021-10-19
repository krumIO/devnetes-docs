# Devnetes Docs

Tips and tools for application developers using Kubernetes

(Build status placeholder)
[Docs Service Documentation](https://github.com/krumio/devnetes-docs/)

Version: pre-alpha

Documentation Index:
- [Installation](#installation)
  - (placeholder) [Setup](#setup)
  - (placeholder) [Running](#running)
  - [Setup for Development](#setup-for-development)
  - (placeholder) [Run in development](#run-in-development)
  - (placeholder) [How to Test](#how-to-test)
- Project
  - [Contributing Guide](/CONTRIBUTING.md)
- Support
  - [Changelog](/CHANGELOG.md)
  - [Interfacing](/docs/interfacing.md)
  - [Troubleshooting](/docs/troubleshooting.md)

## Installation

While this repository uses Docker, there are a few things you should know.
For our development environments, we mount our local file system. This causes our local files to _overwrite_ the files that were created inside of the container.  Because of this, we will need to perform our own installation steps on our local development environments.

### Setup for Development

For Development:

1. This uses docker for development as well as production
2. Mount the root directory to /src/ in the container using a volume mount
3. Run the docker container with the the volume attached and bind a port to :8000
4. Run the container, and access http://localhost:[port]
5. Changes will be re-compiled live and reflected on refresh!

## Run in development

To run in development using docker, build then run the image.

`docker build . -t krumware/devnetes-docs`

`docker run -p 8000:8000 krumware/devnetes-docs`

For convenience, developers may use the included docker-compose file for additional options, such as volume mounting to enable live editing.

`docker-compose up`