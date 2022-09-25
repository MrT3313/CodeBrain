# Identity & Access Management (IAM) - _Global Service_

- Control access to AWS account
- Create users (human & computer)
- Create groups
- Allow || deny access w/ [policies](./Policies_Roles.md) 
- Policies to limit access

## Best Practices

- least privileges principle: only provide minimum access to so any individual task

## Organization

- can have hierarchical groupings of accounts

## Users

- Upon creating your AWS ACCOUNT you are provided a ROOT USER login
- The ROOT USER then creates different RESOURCE USERS (not official name) with their own login for specific services w/ restricted access

## Groups

- Users can be put into groups and policies can be applied to all users of that group

## Permissions & Policies

> A user || group PERMISSIONS are controled through creating || applying POLICIES to a user or group. 

- Policy Types
    - Managed Policies
        - predefined policies that can be applied to numerous users || groups
    - Inline Policies (1 off situations)
        - assigned to one user || group

- Notes
    - An __Explicit Deny__ within a policy will always override an Allow from another policy