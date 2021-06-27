# Network Namespaces

- one of the `Linus kernel features` that Docker uses to build containers
- allows different processes to have different / unique
    - network devices
    - IPs
    - firewall rules
    - etc...

---

## Defaults

- each container has its own `network namespace` with its own IPs
