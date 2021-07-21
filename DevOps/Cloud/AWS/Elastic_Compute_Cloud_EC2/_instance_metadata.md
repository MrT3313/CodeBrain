# Instance Metadata

> allows AWS EC2 instance to "learn about themselves" WITHOUT using an IAM Role for that purpose

- URL: `http://169.254.169.254/latest/meta-data`
    - 🚨 this will only work from within an EC2 instance -> ssh 