# FUSE Builder

## Base Docker Image
- [buildpack-deps:latest](https://hub.docker.com/_/buildpack-deps/)


## Usage

    docker run hatyuki/fuse-builder


### Attach build directory

    docker run -v <your-build-directory>:/fuse-build hatyuki/fuse-builder

### Get binaries

    docker run --name fuse-builder hatyuki/fuse-builder
    docker cp fuse-builder:/fuse-build/util/fusermount .
