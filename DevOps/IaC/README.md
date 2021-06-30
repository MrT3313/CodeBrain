# Infrastructure as Code (IaC)

- The process of managing & provisioning computer resources 
- Uses machine-readable (version controlled) files NOT physical or interactive configuration tools


## Approaches

`what` vs `how`

- DECLARATIVE = focuses on `WHAT` the eventual target configuration should be
    - system executes what needs to happen to reach desired state
- IMPERATIVE = focuses on `HOW` the infrastructure is to be changed to meet ^^
    - defines specific commands that need to be executed in the appropriate order reach the desired conclusion


| Name                    | Released By     | Method | Approach | Language | 
| ---                     | ---             | ---    | ---      | ---      |
| Chef                    | Chef            | Pull   | Both     | Ruby |
| Otter                   | Inedo           | Push   | Both     |      |
| Puppet                  | Puppet          | Pull   | Both     | C++ / Clojure / Ruby |
| SaltStack               | SaltStack       | Both   | Both     | Python | 
| CFEngine                | Northern.tech   | Pull   | Declarative | C
| ⭐️ Terraform               | HashiCorp       | Push   | Declarative | Go
| ⭐ Ansible / Ansible Tower | Red Hat         | Push   | Both        | Python

## Categories

### 1. Infrastructure Provisioning 

- spinning up servers
- network configuration
- creating loadbalancers
- configuration on infrastructure level

### 2. Configuration of Provisioned Infrastructure

- installing & managing apps on servers
- prepare infrastructure/servers to deploy app

### 3. Deploy App _(on provisioned and configured infrastructure)_

- Note:
  - docker can combine steps 2 & 3
  
### 4. Maintain Infrastructure & App