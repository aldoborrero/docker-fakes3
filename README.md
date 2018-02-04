fake-s3
=======

Dockerfile for [aldoborrero/fake-s3](https://registry.hub.docker.com/u/aldoborrero/fake-s3/) on [Docker Hub](https://registry.hub.docker.com).

Deploys [fake-s3](https://github.com/jubos/fake-s3) in a Docker container.

## Differences

This version, as opposed to [lphoward](https://github.com/lphoward/fake-s3/)'s one, is based on official Ruby's alpine version (more concrete [ruby:2.4.3-alpine3.6](https://hub.docker.com/r/library/ruby/tags/2.4.3-alpine3.6/)) which is lightweight alternative to use Debian. Also, it includes a more modern version of fakes3.

## Usage

To create a deployment:

        $ docker run --name my_s3 -d aldoborrero/fake-s3

Service exposed on port 4569. Credentials are ignored. See [fake-s3](https://github.com/jubos/fake-s3) README for details/limitations.

If you want fake-s3 to be exposed on your Docker host on port 4569, then

        $ docker run --name my_s3 -p 4569:4569 -d aldoborrero/fake-s3

If you want the container to use a volume, then

        $ docker run --name my_s3 -v /fakes3_root -d aldoborrero/fake-s3

The fake-s3 root directory will then be added as a volume on the Docker host.  To get the volume

        $ docker inspect --format "{{range .Mounts}}{{.Source}}{{end}}" my_s3

Also, you can use this image with docker compose as well.

## Contributions

If you want to help keeping this project up to date with fake-s3, just issue a PR and I'll merge it happily.

## Acknowledgements

Based on the work done by [lphoward](https://github.com/lphoward/fake-s3/).

## LICENSE

        Copyright 2018 Aldo Borrero

        Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

        The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

        THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.