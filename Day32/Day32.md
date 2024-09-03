## Project Overview: Deploying a Multi-Tier Web Application Using Amazon ECS (Without Load Balancer and API Gateway)
This project is designed to test participants' knowledge of Amazon ECS (Elastic Container Service) by deploying a multi-tier web application on AWS without using a Load Balancer or API Gateway. The project involves setting up an ECS cluster, defining task definitions, creating services, and ensuring proper networking and security configurations using VPC, subnets, security groups, and IAM roles.
## Project Objectives:
- Set up an ECS Cluster using the Fargate launch type.
- Deploy a web application consisting of multiple containers (frontend and backend).
- Implement direct communication between frontend and backend services.
- Manage ECS tasks, services, and scaling policies.
- Ensure network security with VPC, subnets, security groups, and IAM roles.
### Project Deliverables:
> ECS Cluster Setup

- Create an ECS cluster using the Fargate launch type.
- Ensure the cluster is running in a VPC with public and private subnets.

> Task Definitions
- Create task definitions for two services:
- Frontend Service: A container running an NGINX server serving static content.
- Backend Service: A container running a Python Flask API connected to an RDS instance.
- Define CPU and memory requirements for each container.
- Configure environment variables and secrets for connecting to the database.

> RDS Instance Setup
- Launch an RDS instance using the free tier template with MySQL.
- Ensure the RDS instance is in a private subnet, accessible only by the backend service.
- Store database credentials in AWS Secrets Manager or SSM Parameter Store.
![alt text](<Screenshot from 2024-09-02 00-28-11.png>)

> IAM Roles Setup

Create and assign IAM Roles for EC2Tasks
![alt text](<Screenshot from 2024-09-02 00-32-17.png>)

> ECS Services Setup

- Deploy the frontend and backend services using ECS.
- Ensure that the frontend service can communicate directly with the backend service using the backend service's private IP or DNS name.

> Networking and Security

- Set up VPC with public subnets for the frontend service and private subnets for the backend service and RDS.
![alt text](<Screenshot from 2024-09-02 00-34-39.png>)
![alt text](<Screenshot from 2024-09-02 00-35-50.png>)
![alt text](<Screenshot from 2024-09-02 00-36-17.png>)
![alt text](<Screenshot from 2024-09-02 00-36-49.png>)
![alt text](<Screenshot from 2024-09-02 00-37-13.png>)
- Create security groups to:
    - Allow the frontend service to communicate with the backend service.
    - Allow the backend service to connect to the RDS instance.
- Ensure that the frontend service is accessible from the internet while restricting access to the backend service.
- Create IAM roles and policies for ECS tasks to allow access to S3, Secrets Manager, and other required services.


> Deployment and Validation

- Deploy the multi-tier web application using the ECS services.
- Validate the communication between the frontend and backend services.
- Terraform init
![alt text](<Screenshot from 2024-09-02 00-24-06.png>)
Terraform Apply
![alt text](<Screenshot from 2024-09-02 00-24-26.png>)
![alt text](<Screenshot from 2024-09-02 00-27-18.png>)

> Resource Cleanup
- Once the deployment is validated, ensure that all AWS resources are properly terminated:
- Stop and delete ECS tasks and services.
- Delete the ECS cluster.
- Terminate the RDS instance.
- Clean up any associated S3 buckets, IAM roles, and security groups.
![alt text](<Screenshot from 2024-09-02 00-43-32.png>)