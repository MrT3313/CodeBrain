# Provisioning

## Steps

1. Configure PROVIDERS 
    - define the cloud `provider` you want to connect to in what `region`
    ```tf 
        provider "<PROVIDER>" {
            region = "<REGION>"
        } 
    ```
2. Define Provider RESOURCES
    ```tf
        resource "<PROVIDER>_<TYPE>" "<NAME>" {
            [CONFIG...]
        }
    ```
   
    - TYPE == type of resource to create
    - CONFIG == one or more _arguments_ that are specific to that resource

3. Initialize a Terraform
    - `terraform init`
    - looks in the main.tf file for all needed providers -> installs them on the server
   
4. Create Terraform Plan
   - see what is done before actually making changes
      - `+` : created
      - `-` : deleted
      - `~` : modified in place
   - `terraform plan`
   
5. Execute the plan
   - `terraform apply`
   