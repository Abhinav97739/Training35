## Automation (IaaC) Terraform on AWS Assessment Project
## Project Overview
This capstone project is designed to assess participants' knowledge and practical skills with Terraform, specifically focusing on AWS. The project will require deploying a complete infrastructure using Terraform, emphasizing the usage of state lock, variables, .tfvars files, modules, functions, workspaces, and lifecycle rules. The deployment will be restricted to AWS Free Tier resources to avoid unnecessary costs.
## Project Objectives
- Deploy a multi-tier architecture on AWS using Terraform.
- Implement state locking to manage concurrent changes.
- Use variables and .tfvars files to parameterize configurations.
- Create and use Terraform modules to promote reusability and organization.
- Utilize functions to dynamically configure resources.
- Manage multiple environments using Terraform workspaces.
- Implement lifecycle rules to control resource creation, updates, and deletion.
### Project Steps
> Step 1:
 
- Setup Remote State and Locking
- Create an S3 bucket for storing Terraform state.
- Create a DynamoDB table for state locking.
- Configure the backend in Terraform to use the S3 bucket and DynamoDB table.
> Step 2: 

- Develop and Organize Modules
- Develop separate modules for VPC, EC2, RDS, S3, and IAM.
![alt text](<Screenshot from 2024-08-24 20-15-24.png>)
![alt text](<Screenshot from 2024-08-24 20-15-26.png>)
- Place each module in a separate directory with main.tf, variables.tf, and outputs.tf.

> Step 3: 

- Define Variables and tfvars Files
- Define variables in variables.tf files within each module.
- Create a terraform.tfvars file with default values.
- Create separate environment-specific .tfvars files (e.g., dev.tfvars, prod.tfvars).

> Step 4: 

- Implement Workspaces
- Initialize Terraform and create workspaces (development, staging, production).
![alt text](<Screenshot from 2024-08-24 19-55-15.png>)
![alt text](<Screenshot from 2024-08-24 19-56-20.png>)
![alt text](<Screenshot from 2024-08-24 19-57-25.png>)
![alt text](<Screenshot from 2024-08-24 19-58-12.png>)

- Deploy infrastructure in each workspace using the appropriate .tfvars file.
![alt text](<Screenshot from 2024-08-24 19-44-06.png>)

> Step 5: 

- Deploy the Infrastructure
- Use the terraform apply command to deploy the infrastructure in each workspace.
- Verify the deployment by accessing the EC2 instances and ensuring the application is running.
![alt text](<Screenshot from 2024-08-24 19-44-29.png>)
![alt text](<Screenshot from 2024-08-24 19-44-32.png>)

## Checking of Resources created:-
![alt text](<Screenshot from 2024-08-24 19-45-03.png>)
![alt text](<Screenshot from 2024-08-24 19-45-30.png>)
![alt text](<Screenshot from 2024-08-24 19-46-36.png>)
![alt text](<Screenshot from 2024-08-24 19-47-34.png>)
![alt text](<Screenshot from 2024-08-24 19-48-12.png>)
![alt text](<Screenshot from 2024-08-24 19-48-47.png>)
![alt text](<Screenshot from 2024-08-24 19-49-05.png>)
![alt text](<Screenshot from 2024-08-24 19-49-18.png>)

> Step 7: 

- Destroy the infrastructure in each workspace using terraform destroy.
- Ensure that resources marked with prevent_destroy are not deleted.
![alt text](<Screenshot from 2024-08-24 20-08-23.png>)