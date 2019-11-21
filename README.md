# A Docker file with Go, Dep and Node (with npm and yarn)

This is a base image that has the things I need to do backend and frontend development in golang and node. It also includes dep for legacy golang dependency management

**UPDATE** I also use the official confluent go lib, which requires librdkafka. This image now has librdkafka installed for building

Included:

- [Golang 1.13.4](https://golang.org/)
- [NodeJS 13.1.0](https://nodejs.org/en/) - includes NPM 6.12.1
- [Yarn 1.19.1](https://yarnpkg.com/)
- [Dep latest](https://github.com/golang/dep)
- [Packr v2.x](https://github.com/gobuffalo/packr)
- [GolangCI Lint 1.20.0](https://github.com/golangci/golangci-lint)
- [Gosec 2.1.0](https://github.com/securego/gosec)
- [librdkafka 1.2.2](https://github.com/edenhill/librdkafka)
- [Swag CLI latest](https://github.com/swaggo/swag)
- [NFPM 1.1.6](https://github.com/goreleaser/nfpm)
