# Lambda

> run code in response to events (ex: timer || user visits specific section of webpage) without needing to provision or manage servers

- functions can be written in many popular languages
- scales automatically
- 🚨 15 min timeout

## Use Cases
1. Real-time file processing on up load
2. Sending Email Notifications on cloudWatch alarm || timer
3. Backend Business Logic

## Pricing
- Compute Time: there is no charge if your code is not running
- Request Count: request is counted each time it starts
- Always Free: ? 
Example: a Lambda function might involve automatically resizing uploaded images to the AWS Cloud. In this case, the function triggers when uploading a new image