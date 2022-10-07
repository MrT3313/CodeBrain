# Shared Responsibility Model

> AWS is responsible for the security OF the cloud  
> YOU are responsible for the security IN the cloud


## AWS

- global infrasructure: regions / edge locations / availability zones etc...
- networking components: generators, uninterruptible power supply (UPS), control room air conditioning (CRAC), fire suppression systems etc
- data center:  security & maitenance
- software: any managed service like RDS, S3, ECS, Lambda, host system patching, data access endpoints

## YOU

- APPLICATION DATA: including encryption
- SECURITY CONFIGURATION: API calls, rotating credentials, restricting access from VPC etc...
- PATCHING: guest operating system(os)
- Identity & Access Management:
- Network Traffic
- Installed Software