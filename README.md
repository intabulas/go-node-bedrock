# A Docker file with Go, Node and other base goodies I need

This is a base image that has the things I need to do backend and frontend development in golang and node.

**UPDATE** I also use the official confluent go lib, which requires librdkafka. This image now has librdkafka installed for building
**UPDATE** At somepoint I will remove pkgr/packr as 1.16 and go:embed is used more

Feb 4th, 2020 - Lerna has been removed

Included:

- [Golang 1.17.7](https://golang.org/dl/)
- [NodeJS 17.6.0](https://nodejs.org/en/download/current/) - includes NPM 8.5.1
- [Yarn 1.22.17](https://www.npmjs.com/package/yarn)
- [Prettier 2.5.1](https://www.npmjs.com/package/prettier)
- [Packr 2.8.3](https://github.com/gobuffalo/packr)
- [Pkgr 0.17.1](https://github.com/markbates/pkger)
- [Rush 5.62.3](https://www.npmjs.com/package/@microsoft/rush)
- [PNPM 6.30.1](https://www.npmjs.com/package/pnpm)
- [GolangCI Lint 1.44.0](https://github.com/golangci/golangci-lint)
- [Gosec 2.9.6](https://github.com/securego/gosec)
- [librdkafka 1.8.2](https://github.com/edenhill/librdkafka)
- [Swag CLI 1.7.9](https://github.com/swaggo/swag)
- [NFPM 2.12.2](https://github.com/goreleaser/nfpm)
- [FailLint 1.8.0](https://github.com/fatih/faillint)
- [Revive 1.1.3](https://github.com/mgechev/revive)
- [gofumpt 0.2.1](https://github.com/mvdan/gofumpt)
