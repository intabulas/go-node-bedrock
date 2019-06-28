# A Docker file with Go, Dep and Node (with npm and yarn)

This is a base image that has the things I need to do backend and frontend development in golang and node. It also includes dep for legacy golang dependency management

**UPDATE** I also use the official confluent go lib, which requires librdkafka. This image now has librdkafka installed for building

Included:

- [Golang 1.12.6](https://golang.org/)
- [NodeJS 12.5.0](https://nodejs.org/en/) - includes NPM 6.9.0
- [Yarn 1.16.0](https://yarnpkg.com/)
- [Dep latest](https://github.com/golang/dep)
- [Packr latest 1.x](https://github.com/gobuffalo/packr)
- [librdkafka 1.0.0](https://github.com/edenhill/librdkafka)
