# DJango Deployment


## Update Servers

> 🚨 Django has a default non-production server when running locally
>  
> 🔆 "Replace" (_use standard setting to "Add" and overwrite the defaults_) with **Gunicorn** & **Nginx**

### Nginx

> serves static & media files
> 
> forwards other requests to Gunicorn

- Proxy
- Load Balancer



### Gunicorn

- Production Server

#### Config

- Config:
    - Working Directory
    - User
    - Group
    - Environment Variables
        - Django Settings