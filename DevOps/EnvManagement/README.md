# Environment Management

Pip = package manager
virtualenv = environment manager
conda = BOTH package manager & environment manager

| name       | command | package manager | environment manager | desc | 
| ---        |---      | ---             | ---                 | ---  |
| pip        |         | ✅              | ❌                  |                         |
| virtualenv |         | ❌              | ✅                  |                         |
| conda      |         | ✅              | ✅                  |                         |
| apt-get    |         | ✅              | ❌                  | Advanced Packaging Tool (Debian / Ubuntu / related Linux distributions |      |
|            | update  |                 |                     | doesn't actually install new versions of software. Instead, it updates the package lists for upgrades for packages that need upgrading, as well as new packages that have just come to the repositories |      |
|            | install |                 |                     |  |      |

---

# apt-get VS pip

URL: [https://askubuntu.com/questions/431780/apt-get-install-vs-pip-install](https://askubuntu.com/questions/431780/apt-get-install-vs-pip-install)

- `apt-get`
    - hosted by `Canonical`
    - 🚨 hosts a SINGLE version of a any package (generally the `latest` or the one most recently released) CANNOT decide the version of package to install
    - 🚨 installs module in system-wide location -> CANNOT install modules in project virtualenv