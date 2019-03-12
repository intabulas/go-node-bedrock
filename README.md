# A Docker file with Go, Dep and Node (with npm and yarn)

This is a base image that has the things I need to do backend and frontend development in golang and node. It also includes dep and vgo for golang dependency management as well as goreleaser for creating releases

NOTE: I dropped vgo from this build as experimental support was merged into go1.11

NOTE: This is a fork of my https://hub.docker.com/r/intabulas/go-node-glide image. Since I no longer use glide I wanted to transition to a new image

Included:

- [Golang 1.12.0](https://golang.org/)
- [NodeJS 11.11.0](https://nodejs.org/en/) - includes NPM 6.7.0
- [Yarn 1.13.0](https://yarnpkg.com/)
- [Dep latest](https://github.com/golang/dep)
- [Packr latest 1.x](https://github.com/gobuffalo/packr)
