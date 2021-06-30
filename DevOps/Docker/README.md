# Docker

- [Downloads](OS/Docker/downloads.md)
- [Commands](OS/Docker/commands.md)

## Resources

1. [Docker Explained Simply](https://www.youtube.com/watch?v=_trJf3GbZXg)
2. [Simplify All the Things with Docker Compose](https://www.youtube.com/watch?v=QeQ2MH5f_BE)

---

## Dependency Management
1. OS Dependencies
2. CLI Tool Dependencies
3. Python Dependencies

## Architecture

1. `Docker Daemon`
  - pulls images & start/stop containers
  - manages `volumes`, `networks`, `DNS` & more
    
2. `REST API`
  - provides access to the daemon
  - available locally @ `/var/run/docker.sock`

3. `Docker CLI` 
  - makes API requests to `REST API` (`/var/run/docker.sock`)

## Concepts

- Config:
    - [dockerfile](OS/Docker/concepts/config/_dockerfile.md)
    - [docker-compose](OS/Docker/concepts/config/_docker-compose.md)
- Persistent Data:
    - [volumes](OS/Docker/concepts/_volumes.md)
