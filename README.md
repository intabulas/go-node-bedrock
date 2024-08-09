# A Docker file with Go, Node and other base goodies I need

This is a base image that has the things I need to do backend and frontend development in golang, vlang and node.

**UPDATE** I also use the official confluent go lib, which requires librdkafka. This image now has librdkafka installed for building

- Oct 11th, 2024 - Dropping vlang
- Aug 31st, 2022 - add vlang
- Mar 16th, 2022 - Dropped @microsoft/rush
- Feb 23rd, 2022 - pkger and packr were removed
- Feb 4th, 2022 - Lerna has been removed

Included:

- [Golang 1.22.6](https://golang.org/dl/)
- [librdkafka 2.5.0](https://github.com/edenhill/librdkafka)
- [NodeJS 22.3.0](https://nodejs.org/en/download/current/) - includes NPM 10.8.1
- [NFPM 2.37.1](https://github.com/goreleaser/nfpm)
- [Swag CLI 1.16.3](https://github.com/swaggo/swag)
- [GolangCI Lint 1.59.1](https://github.com/golangci/golangci-lint)
- [Gosec 2.20.0](https://github.com/securego/gosec)
- [Revive 1.3.7](https://github.com/mgechev/revive)
- [FailLint 1.13.0](https://github.com/fatih/faillint)
- [gofumpt 0.6.0](https://github.com/mvdan/gofumpt)
- [Yarn 1.22.22](https://www.npmjs.com/package/yarn)
- [Prettier 3.3.2](https://www.npmjs.com/package/prettier)
- [PNPM 9.4.0](https://www.npmjs.com/package/pnpm)
