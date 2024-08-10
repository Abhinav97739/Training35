## Project-09

- Participants are required to deploy a simple static web application on a Kubernetes cluster using Minikube, set up advanced ingress networking with URL rewriting and sticky sessions, and configure horizontal pod autoscaling to manage traffic efficiently. The project will be divided into stages, with each stage focusing on specific aspects of Kubernetes ingress, URL rewriting, sticky sessions, and autoscaling.

### Stage 1: Setting Up the Kubernetes Cluster and Static Web App
1. Set Up Minikube:
Ensure Minikube is installed and running on the local Ubuntu machine.
Verify the Kubernetes cluster is functioning correctly.

![alt text](11.png)

2. Deploy Static Web App:
Create a Dockerfile for a simple static web application (e.g., an HTML page served by Nginx).
Build a Docker image for the static web application.
Push the Docker image to Docker Hub or a local registry.

![alt text](12.png)
![alt text](13.png)

3. Kubernetes Deployment:
Write a Kubernetes deployment manifest to deploy the static web application.
Write a Kubernetes service manifest to expose the static web application within the cluster.
Apply the deployment and service manifests to the Kubernetes cluster.

![alt text](14.png)

### Stage 2: Configuring Ingress Networking

1. Install and Configure Ingress Controller:
Install an ingress controller (e.g., Nginx Ingress Controller) in the Minikube cluster.
Verify the ingress controller is running and accessible.
![alt text](15.png)

2. Create Ingress Resource:
Write an ingress resource manifest to route external traffic to the static web application.
Configure advanced ingress rules for path-based routing and host-based routing (use at least two different hostnames and paths).
Implement TLS termination for secure connections.
Configure URL rewriting in the ingress resource to modify incoming URLs before they reach the backend services.
Enable sticky sessions to ensure that requests from the same client are directed to the same backend pod.
![alt text](16.png)
![alt text](17.png)

### Stage 3: Implementing Horizontal Pod Autoscaling
1. Configure Horizontal Pod Autoscaler:
Write a horizontal pod autoscaler (HPA) manifest to automatically scale the static web application pods based on CPU utilization.
Set thresholds for minimum and maximum pod replicas.
2. Stress Testing:
Perform stress testing to simulate traffic and validate the HPA configuration.
Monitor the scaling behavior and ensure the application scales up and down based on the load.

![alt text](18.png)