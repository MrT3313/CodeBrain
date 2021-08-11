# WORKSPACE

How to manage different environments within the same AWS account

---

# Commands

> 🚨 called on docker-compose file
>  
> PREFIX: `docker-compose -f docker-compose.prod.yml run --rm ...`
- List available workspaces
    - `${prefix} terraform workspace list`
- Create new workspace    
    - `terraform workspace new <name of workspace>`