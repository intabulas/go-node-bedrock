# A Docker file with Go, Dep, Vgo and Node (with npm and yarn)

NOTE: This is a fork of my https://hub.docker.com/r/intabulas/go-node-glide image. Since I no longer use glide I wanted to transition to a new image

This is a base image that has the things I need to do backend and frontend development in golang and node. It also includes dep and vgo for golang dependency management as well as goreleaser for creating releases

Included:

- [Golang 1.10.3](https://golang.org/)
- [NodeJS 10.4.0](https://nodejs.org/en/) - includes NPM 6.1.0
- [Yarn 1.7.0](https://yarnpkg.com/)
- [Dep latest](https://github.com/golang/dep)
- [Vgo latest](https://github.com/golang/vgo)
- [GoReleaser 0.77.1](https://goreleaser.com/)
