# A Docker file with Go, Node and other base goodies I need

This is a base image that has the things I need to do backend and frontend development in golang and node.

**UPDATE** I also use the official confluent go lib, which requires librdkafka. This image now has librdkafka installed for building

Included:

- [Golang 1.15.4](https://golang.org/)
- [NodeJS 15.2.0](https://nodejs.org/en/) - includes NPM 7.0.8
- [Yarn 1.22.10](https://www.npmjs.com/package/yarn)
- [Prettier 2.1.2](https://www.npmjs.com/package/prettier)
- [Packr 2.8.1](https://github.com/gobuffalo/packr)
- [Pkgr 0.17.1](https://github.com/markbates/pkger)
- [Rush 5.35.2](https://www.npmjs.com/package/@microsoft/rush)
- [PNPM 5.11.1](https://www.npmjs.com/package/pnpm)
- [GolangCI Lint 1.32.2](https://github.com/golangci/golangci-lint)
- [Gosec 2.5.0](https://github.com/securego/gosec)
- [librdkafka 1.5.2](https://github.com/edenhill/librdkafka)
- [Swag CLI 1.6.9](https://github.com/swaggo/swag)
- [NFPM 1.9.0](https://github.com/goreleaser/nfpm)
- [FailLint 1.5.0](https://github.com/fatih/faillint)
