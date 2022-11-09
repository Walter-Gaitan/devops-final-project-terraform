# AWS Final Project

## Introduction

This is a project for the AWS Program from Applaudo Studios.
The goal of this project is to create a solution that includes a front-end, a back-end and a MongoDB databases running in an EKS Cluster.

## Description

The solution consist of an infrastructure built on terraform that has two availability zones, each one with a public and a private subnet. The public subnets have a NAT Gateway, the private subnets have an EKS Cluster with a Node Group and a MongoDB database. The application is deployed from an ECR repository.
![diagram](diagram.png)

### Estimated cost

The estimated cost of this solution are divided as follows:

| Name | Monthly Quantity | Unit | Monthly Cost |
| ---- | ----------- | ------ | ------------ |
| EKS cluster | 730 | hours | $73.00 |
| NAT Gateway | 730 | hours | $32.85 |
| NAT Gateway 2 | 730 | hours | $32.85 |
| DNS Charges | 730 | hours | $6.00 |
| **Overall total** |  |  | $144.70 |

## Deployment

The application is deployed in AWS using the following services:

- Amazon EKS
- Nat Gateway
- Load Balancer
- VPC
- ECR
- Route tables
- Security Groups

The ECR service is deployed using Github Actions from the repository where the application lives, and the MongoDB database is deployed manually using Atlas.

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

You can copy the code from the repository and run it locally using the following command:

```
git clone https://github.com/Walter-Gaitan/devops-final-project-app.git
```

You can learn more about how to use it in the documentation of the repository.

During the presentation of this project, I will have a live demo of the application running in AWS, you can access it using the following link: [mernstack.waltergaitan.codes](http://mernstack.waltergaitan.codes/)

## How to run the MongoDB database

You can [create a MongoDB database using Atlas](https://www.mongodb.com/basics/create-database) and connect it to the application.

## Destroy the infrastructure

Before destroying the infrastructure, you need to delete the load balancers and kubeconfig file. Once you have done that, you can run the following command:

```
terraform destroy -auto-approve
```
