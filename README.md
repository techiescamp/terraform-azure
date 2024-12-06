# AKS Deployment with Terraform

This project contains Terraform configurations for deploying an Azure Kubernetes Service (AKS) cluster.

## Prerequisites

Before you begin, ensure you have the following tools installed:

- [Terraform](https://developer.hashicorp.com/terraform/downloads) (>= v1.0.0)
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
- Proper permissions to create resources in your Azure subscription.

Additionally, make sure you have configured your Azure credentials for Terraform to use. You can use the following command to log in and set the subscription:

```bash
az login
az account set --subscription "<your_subscription_id>"
```

## Deployment Steps

Follow the steps to deploy the AKS cluster

### Navigate to the AKS infra directory
```bash
cd infra/aks
```
### Initilize the Terraform code with backend configuration
```bash
terraform init --backend-config="storage_account_name=techiescampbackendsa" --backend-config="container_name=tfstate" --backend-config="key=dev/aks.tfstate"
```
### Review the Terraform plan
```bash
terraform plan --var-file=../../vars/dev/aks.tfvars
```
### Apply the Terraform configuration
```bash
terraform apply --var-file=../../vars/dev/aks.tfvars --auto-approve
```
### Destroy the infrastructure
```bash
terraform destroy --var-file=../../vars/dev/aks.tfvars --auto-approve
```
