# A Docker file with Go, Node and other base goodies I need

This is a base image that has the things I need to do backend and frontend development in golang and node.

**UPDATE** I also use the official confluent go lib, which requires librdkafka. This image now has librdkafka installed for building
**UPDATE** At somepoint I will remove pkgr/packr as 1.16 and go:embed is used more

Included:

- [Golang 1.17.5](https://golang.org/dl/)
- [NodeJS 17.3.0](https://nodejs.org/en/download/current/) - includes NPM 8.3.0
- [Yarn 1.22.17](https://www.npmjs.com/package/yarn)
- [Prettier 2.5.1](https://www.npmjs.com/package/prettier)
- [Packr 2.8.3](https://github.com/gobuffalo/packr)
- [Pkgr 0.17.1](https://github.com/markbates/pkger)
- [Rush 5.58.0](https://www.npmjs.com/package/@microsoft/rush)
- [PNPM 6.24.4](https://www.npmjs.com/package/pnpm)
- [Lerna 4.0.0](https://github.com/lerna/lerna)
- [GolangCI Lint 1.43.0](https://github.com/golangci/golangci-lint)
- [Gosec 2.9.5](https://github.com/securego/gosec)
- [librdkafka 1.8.2](https://github.com/edenhill/librdkafka)
- [Swag CLI 1.7.8](https://github.com/swaggo/swag)
- [NFPM 2.11.3](https://github.com/goreleaser/nfpm)
- [FailLint 1.7.0](https://github.com/fatih/faillint)
- [Revive 1.1.2](https://github.com/mgechev/revive)
