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

