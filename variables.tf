variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "project_name" {
  description = "Project name used for tagging resources"
  type        = string
}

variable "Environment" {
  description = "environment name"
  type        = string
}
variable "instance_type" {
  description = "EC2 instance type"
  type        = string

}
variable "AMI_id" {
  description = "AMI ID to use for EC2 instances"
  type        = string
}
variable "allowed_ssh_ip" {
  description = "allowed ip addresses to ssh into ec2 instances"
  type        = string
}