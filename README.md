# A Docker file with Go, Node and other base goodies I need

This is a base image that has the things I need to do backend and frontend development in golang and node.

**UPDATE** I also use the official confluent go lib, which requires librdkafka. This image now has librdkafka installed for building

**NOTE** I will be dropping Rush from this image as me, like the rest of the world, loves turborepo

Mar 16th, 2022 - Dropped @microsoft/rush
Feb 23rd, 2022 - pkger and packr were removed
Feb 4th, 2022 - Lerna has been removed

Included:

- [Golang 1.19.0](https://golang.org/dl/)
- [NodeJS 18.8.0](https://nodejs.org/en/download/current/) - includes NPM 8.18.0
- [Yarn 1.22.19](https://www.npmjs.com/package/yarn)
- [Prettier 2.7.1](https://www.npmjs.com/package/prettier)
- [PNPM 7.9.5](https://www.npmjs.com/package/pnpm)
- [GolangCI Lint 1.49.0](https://github.com/golangci/golangci-lint)
- [Gosec 2.13.1](https://github.com/securego/gosec)
- [librdkafka 1.9.2](https://github.com/edenhill/librdkafka)
- [Swag CLI 1.8.5](https://github.com/swaggo/swag)
- [NFPM 2.18.1](https://github.com/goreleaser/nfpm)
- [FailLint 1.11.0](https://github.com/fatih/faillint)
- [Revive 1.2.3](https://github.com/mgechev/revive)
- [gofumpt 0.3.1](https://github.com/mvdan/gofumpt)
