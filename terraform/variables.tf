variable "aws_region" {
  description = "AWS region for infrastructure deployment"
  type        = string
}


variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the main VPC"
  type        = string
}

variable "private_subnets" {
  description = "Private subnets for EKS worker nodes"
  type        = list(string)
}

variable "public_subnets" {
  description = "Public subnets for AWS Load Balancers"
  type        = list(string)
}

variable "database_subnets" {
  description = "Isolated private subnets for RDS"
  type        = list(string)
}

variable "db_name" {
  description = "PostgreSQL database name"
  type        = string
}

variable "db_username" {
  description = "PostgreSQL master admin username"
  type        = string
}

variable "db_password" {
  description = "PostgreSQL master admin password"
  type        = string
  sensitive   = true
}

variable "cluster_version" {
  description = "version of the EKS Cluster"
  type        = string

}