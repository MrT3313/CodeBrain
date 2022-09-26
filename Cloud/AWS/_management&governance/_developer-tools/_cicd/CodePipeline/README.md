# Code Pipeline

> continuous delivery solution / automates the software relate process

- quickly deliver new features and updates
- integrates with CodeBuild to run builds and unit tests
- integrates with CodeCommit to retrieve source code
- integrates with CodeDeploy to deploy your changes 
- Steps
	- SOURCE CODE 👉 CodeCommit / GitHub / Amazon S3 ...
	- BUILD 👉 CodeBuild / Jenkins ...
	- LOAD TESTING 👉 3rd party tools
	- DEPLOY 👉 CodeDeploy / Elastic Beanstalk / CloudFormation / ECS ...
- Stages 👉
	- each pipeline stage can create `artifacts` that are first stored in Amazon S3 and then passed ono the next stage
	- each stage can have sequential actions and or parallel actions
	- if stage fails then the pipeline stocks and you can get information in the console
	- manual approval can be defined at any stage
	- EX: Build / Test/ Deploy / Load Test ...

- pipeline state changes happen in AWS CloudWatch Events that can return / create SNS notifications