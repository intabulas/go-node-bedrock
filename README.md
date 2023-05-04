# A Docker file with Go, Node and other base goodies I need

This is a base image that has the things I need to do backend and frontend development in golang, vlang and node.

**UPDATE** I also use the official confluent go lib, which requires librdkafka. This image now has librdkafka installed for building

Aug 31st, 2022 - add vlang
Mar 16th, 2022 - Dropped @microsoft/rush
Feb 23rd, 2022 - pkger and packr were removed
Feb 4th, 2022 - Lerna has been removed

Included:

- [Golang 1.20.4](https://golang.org/dl/)
- [NodeJS 20.1.0](https://nodejs.org/en/download/current/) - includes NPM 9.6.4
- [vlang 0.3.3](https://vlang.io/)
- [Yarn 1.22.19](https://www.npmjs.com/package/yarn)
- [Prettier 2.8.7](https://www.npmjs.com/package/prettier)
- [PNPM 8.2.0](https://www.npmjs.com/package/pnpm)
- [GolangCI Lint 1.52.2](https://github.com/golangci/golangci-lint)
- [Gosec 2.15.0](https://github.com/securego/gosec)
- [librdkafka 2.1.0](https://github.com/edenhill/librdkafka)
- [Swag CLI 1.8.10](https://github.com/swaggo/swag)
- [NFPM 2.28.0](https://github.com/goreleaser/nfpm)
- [FailLint 1.11.0](https://github.com/fatih/faillint)
- [Revive 1.3.1](https://github.com/mgechev/revive)
- [gofumpt 0.5.0](https://github.com/mvdan/gofumpt)
