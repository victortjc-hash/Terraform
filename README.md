# Terraform
AWS Terraform workshop

This repository documents my hands-on work completing the AWS Terraform workshop. 
(https://catalog.workshops.aws/terraform101/en-US)

The goal of the workshop is to understand Terraform and build an AWS infrastucutre using code. 

# Tools & Technologies
- Terraform
- AWS (IAM, VPC, Subnets, ALB, CloudFront)
- Gitpod / VS Code
- AWS CLI

#Architecture
<img width="1075" height="632" alt="Screenshot 2025-12-19 at 1 28 30 PM" src="https://github.com/user-attachments/assets/c0563071-cecf-4870-8072-99a59c8fd0b8" />

#AWS Services

- AWS Identity and Access Management  (AWS IAM) - securely manage identities and access to AWS services and resources
- Amazon Virtual Private Cloud  (Amazon VPC) - define and launch AWS resources in a logically isolated virtual environment
- Amazon Elastic Compute Cloud  (Amazon EC2) - provides scalable computing capacity
- Amazon Relational Database Service  (Amazon RDS) - fully managed, open-source cloud database service that allows you to easily operate and scale your relational database
- Amazon Simple Storage Service  (Amazon S3) - object storage service offering industry-leading scalability, data availability, security, and performance
- Amazon Elastic File System  (Amazon EFS) - serverless, fully elastic file storage
- AWS Simple Systems Manager  (SSM) - operations hub for your AWS applications and resources and a secure end-to-end management solution
- AWS Secrets Manager  - manage, retrieve, and rotate database credentials, tokens, API keys, and other secrets
- AWS Certificate Manager  (ACM) - provision and manage SSL/TLS certificates with AWS services and connected resources
- Amazon CloudFront  - content delivery network (CDN) service built for high performance, security, and developer convenience

Step 1 - Create Resources for IAM
Purpose
- Allow EC2 instances to read from S3
- Grant full access permissions to RDS Resources.  
Architecture -
<img width="746" height="555" alt="Screenshot 2025-12-19 at 1 39 19 PM" src="https://github.com/user-attachments/assets/54f0e2db-1087-411d-b2d0-a4996bec01e2" />

main.tf


