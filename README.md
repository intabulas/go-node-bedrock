# A Docker file with Go, Node and other base goodies I need

This is a base image that has the things I need to do backend and frontend development in golang and node.

**UPDATE** I also use the official confluent go lib, which requires librdkafka. This image now has librdkafka installed for building

Included:

- [Golang 1.16.2](https://golang.org/)
- [NodeJS 15.11.0](https://nodejs.org/en/) - includes NPM 7.6.0
- [Yarn 1.22.10](https://www.npmjs.com/package/yarn)
- [Prettier 2.2.1](https://www.npmjs.com/package/prettier)
- [Packr 2.8.1](https://github.com/gobuffalo/packr)
- [Pkgr 0.17.1](https://github.com/markbates/pkger)
- [Rush 5.41.0](https://www.npmjs.com/package/@microsoft/rush)
- [PNPM 5.18.6](https://www.npmjs.com/package/pnpm)
- [Lerna 4.0.0](https://github.com/lerna/lerna)
- [GolangCI Lint 1.38.0](https://github.com/golangci/golangci-lint)
- [Gosec 2.7.0](https://github.com/securego/gosec)
- [librdkafka 1.6.1](https://github.com/edenhill/librdkafka)
- [Swag CLI 1.7.0](https://github.com/swaggo/swag)
- [NFPM 2.3.1](https://github.com/goreleaser/nfpm)
- [FailLint 1.7.0](https://github.com/fatih/faillint)
