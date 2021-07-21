# Simple Notification Service (SNS)

> Public / Subscribe (PubSub) Service

- send out messages to other services
- send out notifications to end users

# Steps:

1. Create SNS topic (channel for messages to be delivered)
2. Configure subscribers to topic
  - subscribers can also be endpoints / SQS Queues / HTTP Web Hooks / AWS Lambda functions / etc...
3. Publish