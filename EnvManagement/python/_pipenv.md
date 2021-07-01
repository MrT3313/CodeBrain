# pipenv

> tries to combine functionality of `Pipfile`, `pip`, `virtualenv` in one command-line command

- 👍 Pro
    - uses `Pipfile.lock` to handle all packages installed
    - can graph dependencies w/ a simple command
    - contains a `safety` package that scans every package in your dependencies to find security vulnerabilities

- 😡 Con
    - steep learning curve from beginners
    
## Steps

1. Install
    - `pip3 install pipenv`
2. Activate
    - `pipenv shell`
3. Install Package
    - `pipenv install <package_name>`
4. Check Local Packages
    - `pipenv lock -r`
5. Uninstall Package
    - `pipenv uninstall <package_name>`
6. Check Dependency Graph
    - `pipenv graph`
7. Exit Virtual Environment
    - `exit`
