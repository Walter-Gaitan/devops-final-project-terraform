# Github Actions

This directory contains the Github Actions workflows for the project.

## Workflows

### PR
Creates an automatic PR request when pushing to the develop branch.

### Terraform
Runs the Terraform commands to plan and apply the infrastructure in the AWS account using the prod workspace.
Once it's done, it destroy the infraestructure and leaves a comment if successful.