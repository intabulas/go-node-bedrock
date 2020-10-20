# A Docker file with Go, Node and other base goodies I need

This is a base image that has the things I need to do backend and frontend development in golang and node.

**UPDATE** I also use the official confluent go lib, which requires librdkafka. This image now has librdkafka installed for building

Included:

- [Golang 1.15.3](https://golang.org/)
- [NodeJS 15.0.0](https://nodejs.org/en/) - includes NPM 7.0.2
- [Yarn 1.22.10](https://yarnpkg.com/)
- [Prettier 2.1.2](https://prettier.io/)
- [Packr 2.8.0](https://github.com/gobuffalo/packr)
- [Pkgr 0.17.1](https://github.com/markbates/pkger)
- [Rush 5.34.4](https://rushjs.io/)
- [PNMP 5.9.3](https://pnpm.js.org/)
- [GolangCI Lint 1.31.0](https://github.com/golangci/golangci-lint)
- [Gosec 2.4.0](https://github.com/securego/gosec)
- [librdkafka 1.5.2](https://github.com/edenhill/librdkafka)
- [Swag CLI 1.6.9](https://github.com/swaggo/swag)
- [NFPM 1.8.0](https://github.com/goreleaser/nfpm)
- [FailLint 1.5.0](https://github.com/fatih/faillint)
