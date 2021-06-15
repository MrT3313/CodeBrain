# Context

- A set of files at a specified location
- Types:
    - `PATH`: directory on your local filesystem
        - 🚨 Do not use your root directory, /, as the PATH for your build context, as it causes the build to transfer the entire contents of your hard drive to the Docker daemon 🚨
    - `URL`: Git repository location
- Processed RECURSIVELY so a `PATH` includes any subdirectories & the `URL` includes the repo and its submodules

## Best Practices

- Start with an empty directory as context and keep `Dockerfile` in that directory
- Utilize [.dockerignore](https://docs.docker.com/engine/reference/builder/#dockerignore-file) file to context directory
