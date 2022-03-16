# A Docker file with Go, Node and other base goodies I need

This is a base image that has the things I need to do backend and frontend development in golang and node.

**UPDATE** I also use the official confluent go lib, which requires librdkafka. This image now has librdkafka installed for building

**NOTE** I will be dropping Rush from this image as me, like the rest of the world, loves turborepo

Mar 16th, 2022 - Dropped @microsoft/rush
Feb 23rd, 2022 - pkger and packr were removed
Feb 4th, 2022 - Lerna has been removed

Included:

- [Golang 1.18.0](https://golang.org/dl/)
- [NodeJS 17.7.1](https://nodejs.org/en/download/current/) - includes NPM 8.5.2
- [Yarn 1.22.17](https://www.npmjs.com/package/yarn)
- [Prettier 2.6.0](https://www.npmjs.com/package/prettier)
- [PNPM 6.32.3](https://www.npmjs.com/package/pnpm)
- [GolangCI Lint 1.44.2](https://github.com/golangci/golangci-lint)
- [Gosec 2.10.0](https://github.com/securego/gosec)
- [librdkafka 1.8.2](https://github.com/edenhill/librdkafka)
- [Swag CLI 1.8.0](https://github.com/swaggo/swag)
- [NFPM 2.13.0](https://github.com/goreleaser/nfpm)
- [FailLint 1.8.0](https://github.com/fatih/faillint)
- [Revive 1.1.4](https://github.com/mgechev/revive)
- [gofumpt 0.3.0](https://github.com/mvdan/gofumpt)
