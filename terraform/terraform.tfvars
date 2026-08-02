aws_region = "us-east-1"

cluster_name = "jerney-app"

vpc_cidr = "10.0.0.0/16"

cluster_version = "1.36"

private_subnets = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

public_subnets = [
  "10.0.4.0/24",
  "10.0.5.0/24"
]

database_subnets = [
  "10.0.10.0/24",
  "10.0.11.0/24"
]

