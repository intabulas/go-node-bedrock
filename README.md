# A Docker file with Go, Node and other base goodies I need

This is a base image that has the things I need to do backend and frontend development in golang and node.

**UPDATE** I also use the official confluent go lib, which requires librdkafka. This image now has librdkafka installed for building

**Feb 26, 2020** I have removed Dep fronm this image

Included:

- [Golang 1.15.2](https://golang.org/)
- [NodeJS 14.13.0](https://nodejs.org/en/) - includes NPM 6.14.8
- [Yarn latest](https://yarnpkg.com/)
- [Packr v2.x](https://github.com/gobuffalo/packr)
- [GolangCI Lint 1.31.0](https://github.com/golangci/golangci-lint)
- [Gosec 2.4.0](https://github.com/securego/gosec)
- [librdkafka 1.5.0](https://github.com/edenhill/librdkafka)
- [Swag CLI latest](https://github.com/swaggo/swag)
- [NFPM 1.8.0](https://github.com/goreleaser/nfpm)
- [FailLint latest](https://github.com/fatih/faillint)
