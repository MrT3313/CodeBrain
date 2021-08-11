# Tasks

- 👀 1 task per ECS instance

- each task needs a specific role 

## Task Execution Role

## Task Definition

> metadata in JSON format to tell ECS how to run a Docker Container

- information
    - Image Name
    - Port Binding for Container to Host
    - Memory & CPU required
    - Env Variables
    - Networking Information
    - ...
    
### EC2 Task Definition

- assign IAM Role
- 👀 leave host port blank if you are using an ALB w/ dynamic port forwarding

### Fargate Task Definition

## Task Placement

> only EC2 (_not Fargate_)

- Fine all options
- look at constraints


### Task Placement Strategy

- Binpack
  - minimize number of instances 👉 place tasks based on the least available amount of CPU memory (completly fill a container first)
  ```json
  {"placementStrategy" : [
    {  
      "field":  "memory",
      "type":  "binpack"
    }
  ]}
  ```

- Random
- Spread
  - evenly across specified value
  ```json
  {"placementStrategy" : [
    {  
      "field":  "attribute:ecs.availability-zone",
      "type":  "spread"
    }
  ]}
  ```
### Task Placement Constraints

- `distinctInstance` 👉 never have 2 of the same tasks on the same instance
- `memberOf` 👉 use cluster query language (_advanced_) to define placement in through an expression