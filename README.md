# A Docker file with Go, Node and other base goodies I need

This is a base image that has the things I need to do backend and frontend development in golang and node.

**UPDATE** I also use the official confluent go lib, which requires librdkafka. This image now has librdkafka installed for building

Included:

- [Golang 1.15.8](https://golang.org/)
- [NodeJS 15.8.0](https://nodejs.org/en/) - includes NPM 7.5.1
- [Yarn 1.22.10](https://www.npmjs.com/package/yarn)
- [Prettier 2.2.1](https://www.npmjs.com/package/prettier)
- [Packr 2.8.1](https://github.com/gobuffalo/packr)
- [Pkgr 0.17.1](https://github.com/markbates/pkger)
- [Rush 5.39.1](https://www.npmjs.com/package/@microsoft/rush)
- [PNPM 5.17.1](https://www.npmjs.com/package/pnpm)
- [GolangCI Lint 1.36.0](https://github.com/golangci/golangci-lint)
- [Gosec 2.6.1](https://github.com/securego/gosec)
- [librdkafka 1.6.0](https://github.com/edenhill/librdkafka)
- [Swag CLI 1.7.0](https://github.com/swaggo/swag)
- [NFPM 2.2.4](https://github.com/goreleaser/nfpm)
- [FailLint 1.5.0](https://github.com/fatih/faillint)
