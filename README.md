# A Docker file with Go, Node and other base goodies I need

This is a base image that has the things I need to do backend and frontend development in golang, vlang and node.

**UPDATE** I also use the official confluent go lib, which requires librdkafka. This image now has librdkafka installed for building

- Oct 11th, 2024 - Dropping vlang
- Aug 31st, 2022 - add vlang
- Mar 16th, 2022 - Dropped @microsoft/rush
- Feb 23rd, 2022 - pkger and packr were removed
- Feb 4th, 2022 - Lerna has been removed

Included:

- [Golang 1.22.1](https://golang.org/dl/)
- [librdkafka 2.3.0](https://github.com/edenhill/librdkafka)
- [NodeJS 21.7.1](https://nodejs.org/en/download/current/) - includes NPM 10.5.0
- [NFPM 2.35.2](https://github.com/goreleaser/nfpm)
- [Swag CLI 1.16.2](https://github.com/swaggo/swag)
- [GolangCI Lint 1.55.2](https://github.com/golangci/golangci-lint)
- [Gosec 2.18.2](https://github.com/securego/gosec)
- [Revive 1.3.6](https://github.com/mgechev/revive)
- [FailLint 1.11.0](https://github.com/fatih/faillint)
- [gofumpt 0.5.0](https://github.com/mvdan/gofumpt)
- [Yarn 1.22.21](https://www.npmjs.com/package/yarn)
- [Prettier 3.2.4](https://www.npmjs.com/package/prettier)
- [PNPM 8.14.1](https://www.npmjs.com/package/pnpm)
