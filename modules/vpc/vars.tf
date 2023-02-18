variable "aws_region" {
  default = "us-east-1"
}

variable "name" {
  default = "example-vpc"
}

variable "cidr" {
  default = "10.0.0.0/16"
}

variable "azs" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "private_subnets" {
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  default = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "enable_nat_gateway" {
  default = true
}

variable "single_nat_gateway" {
  default = true
}

variable "create_database_subnet_group" {
  default = false
}

variable "enable_dns_hostnames" {
  default = true
}

variable "enable_dns_support" {
  default = true
}

variable "tags" {
  default = {
    Environment = "production"
    Owner       = "example"
  }
}

variable "enable_internet_gateway" {
  default = true
}