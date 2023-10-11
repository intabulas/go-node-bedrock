# A Docker file with Go, Node and other base goodies I need

This is a base image that has the things I need to do backend and frontend development in golang, vlang and node.

**UPDATE** I also use the official confluent go lib, which requires librdkafka. This image now has librdkafka installed for building

Oct 11th, 2024 - Dropping vlang
Aug 31st, 2022 - add vlang
Mar 16th, 2022 - Dropped @microsoft/rush
Feb 23rd, 2022 - pkger and packr were removed
Feb 4th, 2022 - Lerna has been removed

Included:

- [Golang 1.21.3](https://golang.org/dl/)
- [NodeJS 20.8.0](https://nodejs.org/en/download/current/) - includes NPM 10.1.0
- [Yarn 1.22.19](https://www.npmjs.com/package/yarn)
- [Prettier 3.0.0](https://www.npmjs.com/package/prettier)
- [PNPM 8.6.7](https://www.npmjs.com/package/pnpm)
- [GolangCI Lint 1.54.2](https://github.com/golangci/golangci-lint)
- [Gosec 2.16.0](https://github.com/securego/gosec)
- [librdkafka 2.2.0](https://github.com/edenhill/librdkafka)
- [Swag CLI 1.16.2](https://github.com/swaggo/swag)
- [NFPM 2.33.1](https://github.com/goreleaser/nfpm)
- [FailLint 1.11.0](https://github.com/fatih/faillint)
- [Revive 1.3.1](https://github.com/mgechev/revive)
- [gofumpt 0.5.0](https://github.com/mvdan/gofumpt)
