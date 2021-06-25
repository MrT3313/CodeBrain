# The Twelve Factor App

Author: Heroku
URL: [https://12factor.net](https://12factor.net)

## Summary

Software is commonly delivers as a service: _web apps_ / _software-as-a-service_

The 12 Factor App is a methodology for building software-as-a-service apps that: 
    - use **declarative** formats for setup automation -> minimizes time and cost for new developers joining the project
    - have a **clean contract** with the underlying operating system that offers **maximum portability** between execution environments
    - **minimizes divergence** between development and production -> enabling **continuous deployment** for maximum agility
    - can **scale up** without significant changes to tooling, architecture, or development practices

--- 

### 1. Codebase

> One codebase tracked in revision control, many deploys

- Version Control Systems
    - `git`
    - `Mercurial`
    - `Subversion`
    
- One-to-One correlation between the `codebase` and the `app`
    - If there are multiple `codebases` its NOT an `app` ... its a `distributed system` and each component of that system is an app (and each individually should comply with twelve-factor)
    - Multiple apps sharing the same code is a VIOLATION of twelve-factor -> instead factor shared code into libraries that can be imported w/ a dependency manager
    
- A `deploy` is a running instance of the app (typically a production site & one or more staging sites (the developers local dev environment also qualifies as a deploy))
    - the `codebase` is the same across all deploys
    
### 2. Dependencies

> Explicitly declare and isolate dependencies

- Library Management
    - `site packages`: libraries installed through a packaging system
    - `vendoring` / `bundling` : libraries scopes into the directory containing the app
- **Never relies on implicit existence of system-wide packages**
    - declares all dependencies, completly and exactly via a `dependency declaration manifest`
        - uses `dependency isolation` tool during execution to ensure that no implicit dependencies "leak in" from the surrounding system
    
- EX:
    `ruby`: `Gemfile=dependency declaration` / `bundle exe=dependency isolation`
    `python`: `Pip=declaration` / `virtualenv=isolation`
  
### 3. Config

> Store config in the environment

- **strict separation of config from code**

- Config varies substantially across `deployes` & `code does not`

- compliance litmus test
    `can the codebase be made open source at any moment without compeomising any credentials?`

- **config variables are stores as _environment variables_ (_env vars_)**

- ??!!
    > In a twelve-factor app, env vars are granular controls, each fully orthogonal to other env vars. They are never grouped together as “environments”, but instead are independently managed for each deploy. This is a model that scales up smoothly as the app naturally expands into more deploys over its lifetime.

### 4, Backing Services 

> Treat backing services as attaches resources

- `backing service` any service the app consumes over the network as part of its normal operation
    - each `backing service` is a `resource`
        - a resource can be attached to and detached from deploys at will

- 12FA makes no distinction between `local` and `third party` services
    - to the app, both are `attached resources` accessed via a URL or other locator/creds stored in `config`
    
- a `deploy` of the app should be able to swap out a one service for another without any code changes
    - **only the resource handling the coding needs to change**

### 5. Build, release, run

> Strictly separate build and run stages

- a codebase is transformed into a (non-development) deploy through three stage

    1. The `BUILD` Stage
        - converts a code repo into an executable bundle known as a `build`
        - fetches dependencies and compiles binaries and assets
    2. The `RELEASE` Stage
        - takes binary and combines it with the `deploys` current `config`
        - the resulting `release` contains both the build and config & is ready for immediate execution in the execution environment
            - every release should have unique releaseID (like timestamp or version)
    3. The `RUN` Stage
        - known as `runtime`
        - runs the app in the execution environment

### 6. Processes

> Execute the app as one or more statless processes

- 12FA are **stateless and share-nothing**. Any data that needs to persist must be stored in a stateful backing service (typically a database)

- The memory space or filesystem of the process can be used as a brief, single-transaction cache

- never assumes that anything caches in memory or on disk will be available on a future request or job
    - with many processes chances are high that a future request will be served by a different process

- `sticky sessions` -> caching user session data in memory of the app’s process
    - ^ should never be used or relied upon ^ -> use data_store 

### 7. Port Binding

> Export services via port binding

- a 12FA is **self-contained** and does not rely on runtime injextion of a webserver into an execution environment to create a web-facing service.
    - the web app **exports HTTP as a service by binding to a port** and listening for requests
    
- typically implemented by using dependency declaration to add a webserver library to the app

### 8. Concurrency 

> Scale out via the process model

- **processes are first class citizens**

- strong cues from the [unix process model for running service deamons](https://adam.herokuapp.com/past/2011/5/9/applying_the_unix_process_model_to_web_apps/)

### 9. Dispoasbility

> Maximize robustness with fast startup and graceful shutdown

- processes can be started or stopped at a moments notice
    - fast "elastic" scaling
    - rapid & robust deployment of `code` or `config` changes 

- prioritize minimize startup time

- process shuts down gracefully from [SIGTERM](https://en.wikipedia.org/wiki/Signal_(IPC)#SIGTERM) signal
    - stop listening on port (refuses new requests)
    - allow current requests to finish
    - exit process
    
- implicitly understands HTTP requests are short (< a few seconds)
    - if its loop polling the client would try to reconnect automatically (a separate instance would pick up the request??)
    
- current job returned to work queue
    
### 10. ⭐️ Dev/prod parity ⭐️

> Keep development, stating, and production as similar as possible

- Designed for [continuous deployment](https://avc.com/2011/02/continuous-deployment/)
- Tighten gap between development & production
    - `The Time Gap`: dev may work on code that takes days / weeks / months to go into production
        - SOLUTION: Make the time gap small: a developer may write code and have it deployed hours or even just minutes later
    - `The Personnell Gap`: developers write code, ops engineers deploy it
        - SOLUTION: Make the personnel gap small: developers who wrote code are closely involved in deploying it and watching its behavior in production
    - `The Tools Gap`: developers may be using a `Nginx / SQLite/ OS X` production while deployment uses `Apache/ MySQL / Linux`
        - SOLUTION: Make the tools gap small: keep development and production as similar as possible

- Look for library _adapters_ for different services

    | Type  | Language          | Library               | Adapters |
    | ---   | ---               | ---                   | ---      |
    | DB    | Ruby/Rails        | ActiveRecord          | MySQL / PostgreSQL / SQList | 
    | Queue | Python / DJango   | Celery                | RabbitMQ / Beanstalkd / Redit | 
    | Cache | Ruby/Rails        | ActiveSupport::Cache  | Memory / Filesystem / Memcaches | 

- resist the urge to use different backing services between development and production

### 11. Logs

> Treat Logs as event streams

- the stream of aggregated & time-ordered events collected from the output streams of all running processes and backing services
- in server-based environments they are usually in a `logfile` 
- A twelve-factor app never concerns itself with routing or storage of its output stream. It should not attempt to write to or manage logfiles. Instead, each running process writes its event stream, unbuffered, to stdout. During local development, the developer will view this stream in the foreground of their terminal to observe the app’s behavior


### 12. Admin process

> Run admin/management tasks as one-off processes

- One-off admin processes should be run in an identical environment as the regular long-running processes of the app 
    - They run against a release, using the same codebase and config as any process run against that release
- Admin code must ship with application code to avoid synchronization issues
