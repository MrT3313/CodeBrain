# Cloud Formation

> AWS DECLARATIVE Infrastructure Provisioning Tool

- benefits
	- no resource is manually created
	- the code can be version controlled
	- infrastructure changes are reviewed through code

- separation of concerns 👉 can create many stacks for many apps, and many layers
	- VPC stacks
	- Network stacks
	- App Stacks

- steps
	- templates are uploaded to S3
	- updating
		- can't edit an old template 👉 must upload a new version
	- deleting
		- deleting a stack delete every artifact that was created by CloudFormation

- building blocks
	- Resources 👉 your AWS resources declared in the template (MANDATORY)
	- Parameters 👉 dynamic inputs for your template
	- Mappings 👉 the static variables for your template
	- Outputs 👉 refers to what has been created
	- Conditionals 👉 list of conditionals to perform resource creation
	- Metadata

- cost
	- each resource within the stack is tagged with an identifier so you can easily see how much a stack costs you
	- can estimate costs of your resources using the CloudFormation template
	- savings strategy
		- in DEV - you could automate deletion of templates at 5PM and recreated at 8AM safely

- don't reinvent the wheel
	- leverage existing templates on the web
	- leverage documentation

## Resources

## Parameters

> a way to provide inputs to your CloudFormation template

- needed to reuse template across the company 👉 some inputs can not be determined ahead of time
- use when your answer to `is this CloudFormation resource configuration likely to change in the future` is YES
- `!Ref` references parameters

### Pseudo Parameters

>

### Param Settings

- type
	- string
	- number
	- comma delimited list
	- List<Type>
	- AWS Parameter (to help catch invalid values - match again existing values in the AWS Account)

- description
- constraints
- constraint description
- Min / Max Length
- Min / Max Value
- Defaults
- AllowedValues (Array)
- AllowedPattern (regexp)

## Mappings

> fixed (hardcoded) variable within CloudFormation Template

- used to differentiate between different environment groups / regions / AMI types
- EX: `Region Map`
	```yml
	Mappings:
		RegionMap:
			us-east-1:
				"32" : "ami-#####"
				"64" : "ami-#####"
			us-west-1:
				"32" : "ami-#####"
				"64" : "ami-#####"
	```
- access a mapped value with the `FindInMap` function
	- `!FindInMap` 👉 returns a names value from a specific key


## Outputs

> declared _optional_ outputs that we can im,port into other stacks

- importing value
	- `!ImportValue`

## Conditions

> used to control the creation of resources or outputs based on a condition
- common
	- env (dev / prod / test)
	- AWS Region
	- any param value
- each condition can reference another condition parameter value or mapping
- create condition
	```yml
	Conditions:
		CreateProdResources: !Equals [ !Ref EnvType, prod ]
	```
- use condition
	```yml
	Resources:
		MountPoint:
			Type: "xxx"
			Condition: CreateProdResources
	```

## Intrinsic Functions
	- `Ref`
		- `!Ref`
		- Parameters 👉 returns the value of a parameter
		- Resources 👉 returns the physical ID of the underlying resource
	- `Fn::GetAtt`
		- get specific attribute that is attached to a resource
	- `Fn::FindInMap`
		- returns value for a specific map key
	- `Fn::ImportValue`
		- import values that are exported in other templates
	- `Fn::Join`
		- joins value w/ delimited
	- `Fn::Sub`
		- substitute variables values into variables
	- Condition Functions
		- `Fn::And`
		- `Fn::Equals`
		- `Fn::If`
		- `Fn::Not`
		- `Fn::Or`

## Rollbacks

- Stack Fails
	- DEFAULT: everything rolls back (gets deleted) 👉 can look at log
	- option to disable rollback and troubleshoot what happened

- Stack Update Fails
	- stack automatically rolls back to the previous known working state
	- can see the log of what happened in error message