## Project Objective:
#### This project will test your ability to deploy a multi-tier architecture application using AWS CloudFormation. The deployment should include an EC2 instance, an S3 bucket, a MySQL DB instance in RDS, and a VPC, all within the specified constraints.

### Project Overview:
- You are required to design and deploy a multi-tier application using AWS CloudFormation. The architecture will include the following components:
- EC2 Instance: Serve as the web server.
- S3 Bucket: Store static assets or configuration files.
- RDS MySQL DB Instance: Serve as the database backend.
- VPC: Ensure secure communication between the components.
#### Key Tasks:
- Create a CloudFormation Template:
#### VPC and Subnets:
- Define a VPC with one public and one private subnet.
- Attach an Internet Gateway to the VPC for public subnet access.
#### Security Groups:
- Create a security group for the EC2 instance, allowing SSH and HTTP access from a specific IP range.
- Create a security group for the RDS instance, allowing MySQL access from the EC2 instance only.
#### EC2 Instance:
- Launch a t2.micro EC2 instance in the public subnet.
- Configure the instance to access the S3 bucket and connect to the RDS instance.
#### S3 Bucket:
- Create an S3 bucket for storing static assets or configuration files.
- Ensure the EC2 instance has the necessary IAM role and permissions to access the S3 bucket.
#### RDS MySQL DB Instance:
- Launch a t3.micro MySQL database in the private subnet.
- Configure the security group to allow access only from the EC2 instance.
![alt text](<Screenshot from 2024-08-28 22-29-59.png>)
![alt text](<Screenshot from 2024-08-28 22-32-12.png>)
![alt text](<Screenshot from 2024-08-28 22-32-17.png>)
### Deploy the Application:
- Deploy the CloudFormation stack using the template created.
- Verify that all components are correctly configured and operational.
- Ensure the EC2 instance can communicate with the RDS instance and access the S3 bucket.
![alt text](<Screenshot from 2024-08-28 23-13-56.png>)
![alt text](<Screenshot from 2024-08-28 23-16-50.png>)
![alt text](<Screenshot from 2024-08-28 23-17-30.png>)
![alt text](<Screenshot from 2024-08-28 23-17-52.png>)
![alt text](<Screenshot from 2024-08-28 23-18-15.png>)
![alt text](<Screenshot from 2024-08-28 23-18-56.png>)
### Resource Termination:
- Once the deployment and testing are complete, terminate all resources by deleting the CloudFormation stack.
- Ensure that no resources, such as EC2 instances, RDS instances, or S3 buckets, are left running.
![alt text](<Screenshot from 2024-08-28 23-35-05.png>)