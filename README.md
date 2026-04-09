# Terraform AWS Web Server

This project provisions an EC2 instance on AWS using Terraform and automatically installs Nginx using user data.

## Features

- Infrastructure as Code with Terraform
- EC2 instance deployment
- Security group configuration for SSH and HTTP
- Automated Nginx installation with user data
- Outputs for instance ID, public IP, and website URL

## Project Structure

- `versions.tf` - Terraform and provider version requirements
- `providers.tf` - AWS provider configuration
- `variables.tf` - Input variable definitions
- `main.tf` - Resource definitions
- `outputs.tf` - Terraform outputs
- `user_data.sh` - EC2 bootstrap script
- `.gitignore` - Prevents sensitive and generated files from being committed

## Usage

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
Example terraform.tfvars
aws_region     = "us-east-1"
project_name   = "terraform-webserver"
environment    = "dev"
instance_type  = "t2.micro"
ami_id         = "ami-xxxxxxxxxxxxxxxxx"
allowed_ssh_ip = "YOUR_PUBLIC_IP"
