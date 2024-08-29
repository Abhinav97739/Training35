# Project: Deploying a Multi-Tier Architecture Application on AWS using Terraform
### Project Objective:
- This project will assess your ability to deploy a multi-tier architecture application on AWS using Terraform. The deployment will involve using Terraform variables, outputs, and change sets. The multi-tier architecture will include an EC2 instance, an RDS MySQL DB instance, and an S3 bucket.
### Key Tasks:
- Setup Terraform Configuration:
- Provider Configuration:
- Configure the AWS provider to specify the region for deployment.
- Ensure the region is parameterized using a Terraform variable.
- Create a VPC with a public subnet for the EC2 instance.
- Define security groups allowing HTTP and SSH access to the EC2 instance, and MySQL access to the RDS instance.
- Define the EC2 instance using a t2.micro instance type.
- Configure the instance to allow SSH and HTTP access.
- Use Terraform variables to define instance parameters like AMI ID and instance type.
- Create a t3.micro MySQL DB instance within the same VPC.
- Use Terraform variables to define DB parameters like DB name, username, and password.
- Ensure the DB instance is publicly accessible, and configure security groups to allow access from the EC2 instance.
- Create an S3 bucket for storing static files or configurations.
- Allow the EC2 instance to access the S3 bucket by assigning the appropriate IAM role and policy.
- Define Terraform outputs to display the EC2 instance’s public IP address, the RDS instance’s endpoint, and the S3 bucket name.
### Apply and Manage Infrastructure:
- Initial Deployment:
- Run terraform init to initialize the configuration.
![alt text](<Screenshot from 2024-08-28 23-59-57.png>)
![alt text](<Screenshot from 2024-08-29 00-01-04.png>)
- Use terraform plan to review the infrastructure changes before applying.
![alt text](<Screenshot from 2024-08-29 00-28-15.png>)
- Deploy the infrastructure using terraform apply, and ensure that the application server, database, and S3 bucket are set up correctly.
![alt text](<Screenshot from 2024-08-29 00-28-32.png>)
- Make a minor change in the Terraform configuration, such as modifying an EC2 instance tag or changing an S3 bucket policy.
- Use terraform plan to generate a change set, showing what will be modified.
- Apply the change set using terraform apply and observe how Terraform updates the infrastructure without disrupting existing resources.
![alt text](<Screenshot from 2024-08-29 00-42-04.png>)
![alt text](<Screenshot from 2024-08-29 00-42-51.png>)
### Resource Termination:
- Once the deployment is complete and validated, run terraform destroy to tear down all the resources created by Terraform.
- Confirm that all AWS resources (EC2 instance, RDS DB, S3 bucket, VPC) are properly deleted.
![alt text](<Screenshot from 2024-08-29 01-20-47.png>)
