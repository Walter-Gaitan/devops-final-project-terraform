# AWS Final Project

## Introduction
This is a project for the AWS Program from Applaudo Studios.
The goal of this project is to create a solution that includes a front-end, a back-end and a MongoDB databases running in an EKS Cluster.

## Description
The solution consist of an infraestructure that includes a front-end, a back-end and a MongoDB database running in an EKS Cluster.
![diagram](diagram.png)

## Deployment
The application is deployed in AWS using the following services:
- Amazon EKS
- Nat Gateway
- Load Balancer
- VPC
- ECR

The ECR service and the MongoDB database are deployed manually using the AWS console.

## How to run the infrastructure
1. Clone the repository
2. Install Terraform
3. Install AWS CLI
4. Configure AWS CLI
5. Run the following commands:
```
terraform init
terraform workspace new prod
terraform plan
terraform apply -auto-approve
```

## How to run the application

The application used in this project is a React application, you can copy the code from the repository and run it locally using the following commands:
```
git clone https://github.com/Walter-Gaitan/devops-final-project-app.git
```

Once you have the code, you can run the following commands:
```
cd devops-final-project-app
rm ~/.kube/config
aws eks --region us-east-1 update-kubeconfig --name <cluster_name>
kubectl apply -f k8s
```

Now you can access the application using the URL provided by the Load Balancer. You can get the URL by running the following command:
```
kubectl get svc
```

## Destroy the infrastructure

Before destroying the infrastructure, you need to delete the load balancers and kubeconfig file. You can do this by running the following commands:
```
kubectl delete -f k8s
rm ~/.kube/config
```