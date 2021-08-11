# Elastic Beanstalk - HTTPS

- load SSL certificate onto Load Balancer
    - console 👉
    - code 👉 `.ebextensions/securelistener-alb.config`
    
- SSL Certificate can be provisioned using ACM (AWS Certificate Manager) or CLI
- configure security group rule to allow incoming port 443 (HTTPS port)
- redirect HTTP to HTTPS
    - ..
    - OR Applicatoin Load Balancer w/ rule
    - make sure health checks are not redirected