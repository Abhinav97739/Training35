## Deploying a Multi-Tier Application Using Helm on Kubernetes and AWS Free Tier Services
### Project Objectives:
- Deploy a multi-tier application using Helm on Minikube.
- Integrate AWS free-tier services (S3 and RDS).
- Manage Helm charts, including versioning, packaging, and rollbacks.
- Implement Helm secrets management and RBAC.
- Handle dependencies between different components of the application.

##### Project Deliverables:
1. Setup Helm and Minikube
    - Ensure Minikube is running.
    - Install and configure Helm on the local machine.
2. AWS Services Setup
    - S3 Bucket: Create an S3 bucket for storing application assets (e.g., static files for the frontend).
    - RDS Instance: Set up an Amazon RDS MySQL 
      instance in the free tier.
![alt text](<Screenshot from 2024-09-02 15-31-43.png>)
![alt text](<Screenshot from 2024-09-02 15-35-55.png>)
![alt text](<Screenshot from 2024-09-02 15-37-31.png>)
3. Create Helm Charts
    - Frontend Chart: Create a Helm chart for a frontend service (e.g., NGINX) that pulls static files from the S3 bucket.
    - Backend Chart: Create a Helm chart for a backend service (e.g., a Python Flask API) that connects to the RDS MySQL database.
    - Database Chart: Include configurations for connecting to the RDS MySQL instance in the backend chart.
![alt text](<Screenshot from 2024-09-02 15-38-13.png>)
![alt text](<Screenshot from 2024-09-02 15-38-30.png>)
4. Package Helm Charts
    - Package each Helm chart into a .tgz file.
Ensure charts are properly versioned.
![alt text](<Screenshot from 2024-09-02 16-11-52.png>)
5. Deploy Multi-Tier Application Using Helm
    - Deploy the database chart (connected to the RDS instance).
    - Deploy the backend chart with dependency on the database chart.
    - Deploy the frontend chart with dependency on the backend service, ensuring it pulls assets from the S3 bucket.
![alt text](<Screenshot from 2024-09-02 16-12-41.png>)
![alt text](<Screenshot from 2024-09-02 16-12-46.png>)
6. Manage Helm Secrets
    - Implement Helm secrets for managing sensitive data such as database credentials and S3 access keys.
    - Update the backend chart to use these secrets for connecting to the RDS instance and S3.
7. Implement RBAC
    - Define RBAC roles and role bindings to manage permissions for Helm deployments.
    - Ensure that only authorized users can deploy or modify the Helm releases.
![alt text](<Screenshot from 2024-09-02 16-16-59.png>)
8. Cleanup
    - Delete all Helm releases and Kubernetes resources created during the project.
    - Terminate the RDS instance and delete the S3 bucket.
    - Stop Minikube if no longer needed.
![alt text](<Screenshot from 2024-09-02 16-18-25.png>)