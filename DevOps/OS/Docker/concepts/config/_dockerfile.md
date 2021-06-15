# Dockerfile

- A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image

- The created image can than be run inside of a container

## Docs & Learning Resources

- [Dockerfile Reference Docs](https://docs.docker.com/engine/reference/builder/)
- [Dockerfile Best Practices](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)

---

## Best Practices

- `Dockerfile` location: 
    - root of context
    - `-f` flag w/ `docker build` to point to specific PATH to Dockerfile
    
- Tag Created Image
    - `-t`

## Usage

- `docker build` command uses a `Dockerfile` & `context` to build an image

- _Notes:_
    - `build` is run by the `Docker deamon` NOT the `CLI`

## Process

1. Send entire context (recursively) to the `Docker deamon`
2. `Docker deamon` performs preliminary validation of `Dockerfile`
3. `Docker deamon` runs instructions
    - Each individual instruction is executed separately and each result is committed to a new image if necessary

### Targets

Multiple `FROM` inside of a `Dockerfile`

```Dockerfile

FROM <image> AS base
...

FROM base AS dev
...

FROM base as prod
...
```

Set target in `build` directive

```docker-compose
version: x
services:
    app:
        build:
            context: .
            target: dev
```

#### Multi-Stage Images

Used to separate `build time` & `run time` dependencies

[?] - Utilize `Dockerfile` `Targets` to implement Multi-Stage Images

### Commands

- `FROM`: initialize a new build stage & sets the Base Image for subsequent instructions
- `WORKDIR`: sets the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it in the Dockerfile
- `RUN`: 
    - `apt-get` (install packages) 
        - always combine with `apt-get install` in a single command