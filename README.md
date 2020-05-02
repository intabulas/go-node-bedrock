# A Docker file with Go, Node and other base goodies I need

This is a base image that has the things I need to do backend and frontend development in golang and node. It also includes dep for legacy golang dependency management

**UPDATE** I also use the official confluent go lib, which requires librdkafka. This image now has librdkafka installed for building

**Feb 26, 2020** I have removed Dep fronm this image

Included:

- [Golang 1.14.2](https://golang.org/)
- [NodeJS 14.1.0](https://nodejs.org/en/) - includes NPM 6.14.4
- [Yarn latest](https://yarnpkg.com/)
- [Packr v2.x](https://github.com/gobuffalo/packr)
- [GolangCI Lint 1.26.0](https://github.com/golangci/golangci-lint)
- [Gosec 2.2.0](https://github.com/securego/gosec)
- [librdkafka 1.4.0](https://github.com/edenhill/librdkafka)
- [Swag CLI latest](https://github.com/swaggo/swag)
- [NFPM 1.2.1](https://github.com/goreleaser/nfpm)
- [FailLint latest](https://github.com/fatih/faillint)
