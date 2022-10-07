# Identity & Access Management (IAM) - _Global Service_

> least privileges principle: only provide minimum access to so any individual task
## Identity VS Access

| Identities        | Access                        |
| ---               | ---                           |                       
| Root user         |  Policies                     | 
| Individual User   |  AWS managed policies         | 
| Groups            |  Customer managed policies    |    
| Roles             |  Permission boundaries        | 

Identities: 

## Authentication VS Authorization

- Authentication: you are who you say you are (username & password)
- Authorization: which services & resources the identity has access to

----


## Organization

- can have hierarchical groupings of accounts

## Users

- Upon creating your AWS ACCOUNT you are provided a ROOT USER login
- The ROOT USER then creates different RESOURCE USERS (not official name) with their own login for specific services w/ restricted access
- APPLICATION users can be made with their own IAM

## Groups

- Users can be put into groups and policies can be applied to all users of that group

## Roles

> define access permissions and are temporarily assumed by an IAM user || service

## Policies

> A user || group PERMISSIONS are controled through creating || applying POLICIES to a user or group. 

- the actual encoding (JSON) of the permissing being granted to a IAM user, group, role
- Policy Types
    - Managed Policies
        - predefined policies that can be applied to numerous users || groups
    - Inline Policies (1 off situations)
        - assigned to one user || group

- Notes
    - An __Explicit Deny__ within a policy will always override an Allow from another policy