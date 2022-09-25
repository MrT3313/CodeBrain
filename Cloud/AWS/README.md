# Amazon Web Servers (AWS)

- [Glossary](https://docs.aws.amazon.com/general/latest/gr/glos-chap.html)
- [Overview of AWS](https://d0.awsstatic.com/whitepapers/aws-overview.pdf)

---

## Regions & Availability

AWS has multiple REGIONS around the world. Each REGION is splitup into AVAILABILITY ZONES. Each AVAILABILITY ZONE is groups based on its location within the REGION (North, South, East, West, Etc..) and each has separate data centers. 

## Services
### 🔐 __Security & Identity__

> __Shared Responsibility Model__
> - __AWS__ : responsible for the security __"OF"__ the cloud  
> - __YOU__ : are responsibility for security __"IN"__ the cloud

#### Data Protection

| Service Name                                                                          | Service Description                                   | 
| ---                                                                                   | ---                                                   | 
| Amazon Macie                                                                          | Discover & Protect Sentitive Data                     | 
| AWS Key Management Service                                                            | Store & Manage Encripyion Keys                        | 
| Aws CloudHSM                                                                          | Hardware Based Key Storage & Regulatory Compliance    | 
| AWS Certificate Manager                                                               | Provision, Manage, Deploy SSL & TLS Certificates      | 
| [AWS Secrets Manager](./_security%26identity/AWS-Secrets-Manager/README.md)           | Rotate, Manage, Retrieve Secrets (like PWs)           |

#### Infrastrucutr Protection
| Service Name                  | Service Description               | 
| ---                           | ---                               | 
| AWS Shield                    | Denial of Service Protection      | 
| AWS Web Application Firewall  | Filter malicious website traffic  | 
| AWS Firewall Manager          | Centrally manage firewall rules   | 

#### Threat Detection
| Service Name                  | Service Description                                   | 
| ---                           | ---                                                   | 
| Amazon GuardDuty              | Automatically Detect Threats                          | 
| Amazon Inspector              | Analyze application security                          | 
| AWS Config                    | Record and Avaluate configuration of AWS Resources    | 
| AWS CloudTrail                | Track use activity and API usage                      | 

#### Identity Management
| Service Name                                                                    | Service Description                                            | 
| ---                                                                             | ---                                                            |
| [AWS IAM (Identity Access Management)](./_security%26identity/IAM/README.md)    | Securley manage access to AWS account services and resources   | 
| AWS SIngle Sign-on                                                              | Implement sing sign on                                         |
| Amazon Cognito                                                                  | User Authentication                                            |
| AWS Directory Service                                                           | Implement and manage Microsoft Active Directory                | 
| AWS Organizations                                                               | Centrally govern and manage multiple AWS accounts in one place | 


### 🧮 __Compute__

> "Compute for any workload": Instance / Container / Serverless

#### Instances / Virtual Machines
| Service Name                                                                              | Service Description                               | 
| ---                                                                                       | ---                                               | 
| [Elastic Compute Cloud (EC2)](./_compute/EC2_Elastic-Compute-Cloud/README.md)            | Elastic Virtual Machines                              |
| Amazon EC2 Spot                                                                           | Fault tolerant workloads @ 90% of normal price    | 
| Amazon EC2 Auto Scaling                                                                   | Automatically add or remove capacity based on demans | 
| Amazon Lightsail                                                                          | Cloud platform to build appliation or websites | 

#### Containers
| Service Name                            | Service Description                               | 
| ---                                     | ---                                               | 
| Amazon ECS (Elastic Container Service)  | Run secure, reliable, & scalable containers      | 
| Amazon ECR (Elastic Container Registry) | Store, manage, & deploy images                  | 
| Amazon EKS (Elastic Kubernetes Service) | Fully manages Kubernetes service                | 

#### Serverless
| Service Name                      | Service Description                           | 
| ---                               | ---                                           |
| AWS Lambda                        | Computer service to run code without servers  |

#### Edge
| Service Name                      | Service Description                                    | 
| ---                               | ---                                                    | 
| AWS Outpost                       | Run AWS Services on-premise                            | 
| AWS Snow Family                   | Bring data into AWS                                    | 
| AWS Wavelength                    | Access AWS services vis 5G networks                    | 
| VMWare Cloud on AWS               | Migrate VMWare workloads                               | 
| AWS Local Zones                   | Run latency sensitive applications closerr to users    | 

### 🗃 __Storage__

- Types
    - File Based Storage (Your Home Computer)
    - Block Based Storage
    - Object Based Storage (S3 || JSON Object: O1 Retrieval)

| Service Type  | Service Name                                                                                              | Service Description | 
| ---           | ---                                                                                                       | ---                 | 
| file          | [Amazon EFS (Elsatic File System)](./_storage/database/_file_system/EFS_Elastic-File-System/README.md)    | Scalable, elastic, cloud native Network file system | 
| file          | Amazon FSx for Windows File Server                                                                        | filly managed file sotage for Windows Server | 
| block         | Amazon EBS (Elastic Block Store)                                                                          | high performance block storage | 
| object        | [Amazon S3 (Simple Storage Solution)](./_storage/database/_object/S3_Simple-Storge-Solution/README.md)    | store and retrieve any amount of data from anywhere in the world | 
| backup        | AWS Backup                                                                                                | Centrally manage and automate backups across AWS services | 
| data transfer | AWS Storage Gateway                                                                                       | on-premis access to unlimited cloud storage| 
| data transfer | AWS DataSync                                                                                              | Transfer data to and from AWS up to 10x faster than normal | 
| data transfer | AWS Transfer Family                                                                                       | Transfer files to S3 usint SFTP, FTP, FTPS | 



### 💽 __Database__ 



| Database Type | Service Name 
| ---           | ---                                                                                           | Service Description                                                   | 
| Relational    | Amazon Aurora                                                                                 | mySQL & PostgreSQL db built for the cloud                             | 
| Relational    | [Amazon RDS](./_database/_relational/RDS_Relational-Database-Service/README.md)               | Easily setup, use, & scale multiple database engines                  | 
| Relational    | Amazon Redshift                                                                               | Cloud data warehouse                                                  |  
| Key-Value     | Amazon DynamoDB                                                                               | Fast & flexible database for any scale                                | 
| In-Memory     | [Amazon ElastiCache](./_database/_in-memory/ElastiCache/README.md)                                                                            | Managed In-memory data store service for Redis & Memcached            | 
| Document      | [Amazon DocumentDB](./_database/_document/DynamoDB/README.md)                                                                             | MongoDB Compatible fash, scalable, highly available document database | 


### 🌐 __Networking__

| Service Type          | Service Name                                                                                      | Service Description                                                                                           |
| ---                   | ---                                                                                               | ---                                                                                                           | 
| Cloud Networks        | [Amazon VPC (Virtual Private Cloud)](./_networking/VPC_Virtual-Private-Cloud/README.md)           | Define & Provision an isolated network for AWS resources                                                      |
| Cloud Networks        | AWS Transit Gateway                                                                               | Connect VPCs and on-premises networks                                                                         | 
| Cloud Networks        | AWS Privatelink                                                                                   | Provide private connectivity between VPCs and on-premises applications                                        | 
| Cloud Networks        | [Amazon Route53](./_networking/Route53/README.md)                                                 | Host your own managed DNS                                                                                     | 
| Network Scaling       | Elastic Load Balancing                                                                            | Automatically distribute network traffic across a pool of resources                                           | 
| Network Scaling       | AWG Global Accelerator                                                                            | Direct Traffic through AWS global network to improve global application performance                           | 
| Content Delivery      | [Amazon CloudFront](./_content_delivery/Cloudfront/README.md)                                     | Securely deliver data, videos and appication to customers globally w/ low latency and high transfer speeds    |


### 👮 __Management & Governance__

| Service Type              | Service Name                                                                              | Service Description                                                           | 
| ---                       | ---                                                                                       | ---                                                                           | 
| Account Management        | AWS Control Tower                                                                         | set up and govern a secure multi-account AWS environment                      |
| Account Management        | AWS Organizations                                                                         | Centrally govern and manage environments across multiple AWS accounts         | 
| Account Management        | AWS Budgets                                                                               | Improve planning & cost control                                               |
| Provisioning Services     | [AWS CloudFormation](./_management%26governance/Cloud_Formation/README.md)                | Model & Provision all your recoursed via code                                 | 
| Provisioning Services     | AWS Service Catalog                                                                       | Create, organize, & govern curated catalog of AWS products                    | 
| Provisioning Services     | AWS OpsWorks                                                                              | Automate operations with Chef & Puppet                                        | 
| Provisioning Services     | AWS Marketplace                                                                           | Find, test, buy, & deploy software that runs on AWS                           | 
| Operation Services        | [Amazon CloudWatch](./_management%26governance/_observability/Cloud_Watch/README.md)      | Observe services via metrics and logging | 
| Operation Services        | AWS Config                                                                                | Record and evaluate configuation of AWS resources | 
| Operation Services        | AWS CloudTrail                                                                            | Track all user activity across AWS accounts | 
| Operation Services        | AWS Systems Manager                                                                       | Optimize performance and security while managing large amount of systems | 
| Operation Services        | Amazon X-ray                                                                              | Analyze and debug production applications | 

### 🧠 __Machine Learning__

| Service Type              | Service Namge                             | Service Description | 
| ---                       | ---                                       | ---                 | 
| AI                        | Amazon Kendra                             | Intelligent Search | 
| AI                        | Amazon Personalize                        | Personalized recommendations | 
| AI                        | [CodeGuru](./_machine-learning/CodeGuru/) | Analyze Code for Cost & Bugs | 
| Business Metrics          | Amazon Lookout for Metrics                | Detect unexpected changes | 
| Business Metrics          | Amazon Forecast                           | Build accurate forecasting models | 
| Business Metrics          | Amazon Fraud Detector                     | Identify potentially fraudulent online activities | 
| Vision                    | Amazon Rekognition                        | Analyze images and videos and extract meaning | 
| Language                  | Amazon Polly                              | Text into life-like speech | 
| Language                  | Amazon Transcribe                         | add high quality speech to text capabilities to applications | 
| Language                  | Amazon Lex                                | Build conversational agent or chat bots | 


## Resources

> Each resource (an instance of or within any AWS service) within AWS is given a specific identifier: `ARN: Amazon Resource Number` 