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

see main_IAM.tf 

This diagram translate the file. 
<img width="772" height="309" alt="Screenshot 2025-12-19 at 1 56 14 PM" src="https://github.com/user-attachments/assets/dfe028ae-ca8f-4f24-bb1e-82e992557951" />

Confirmation

Using AWS COnsole -> IAM to confirm the creation of app & web_hosting roles:

<img width="776" height="674" alt="Screenshot 2025-12-19 at 2 07 11 PM" src="https://github.com/user-attachments/assets/00917ef7-4a78-4542-af69-7666c00fc05f" />
<img width="627" height="623" alt="Screenshot 2025-12-19 at 2 07 32 PM" src="https://github.com/user-attachments/assets/29beb718-7cb9-43aa-878e-c44e83c4854e" />

Step 1 successful!

Now moving to Step 2 - 
Creating Resources for Networking

The next step is create a VPC.

Architecture:

<img width="1038" height="633" alt="Screenshot 2025-12-19 at 2 13 43 PM" src="https://github.com/user-attachments/assets/85173cb9-4941-4960-93ee-159a062c5c73" />

Confirmation
Using AWS Console -> VPC to confirm the creation of VPC

<img width="954" height="534" alt="Screenshot 2025-12-19 at 2 38 59 PM" src="https://github.com/user-attachments/assets/d8ab6f35-e30c-4013-83c4-f6802fc69236" />
<img width="899" height="476" alt="Screenshot 2025-12-19 at 2 38 51 PM" src="https://github.com/user-attachments/assets/b677193c-185f-4c0b-9bad-8676eb7d066d" />
<img width="824" height="360" alt="Screenshot 2025-12-19 at 2 38 44 PM" src="https://github.com/user-attachments/assets/ab8c7e91-89f0-486f-b3e7-26644b175144" />

