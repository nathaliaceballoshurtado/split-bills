variable "aws_region" {
  default = "us-east-1"
}

variable "function_name" {
  default = "example-function"
}

variable "description" {
  default = "Example Lambda function"
}

variable "runtime" {
  default = "nodejs14.x"
}

variable "handler" {
  default = "index.handler"
}

variable "source_path" {
  default = "lambda_function.zip"
}

variable "timeout" {
  default = 10
}

variable "memory_size" {
  default = 128
}

variable "environment_variables" {
  default = {
    VAR1 = "value1"
    VAR2 = "value2"
  }
}

variable "vpc_config" {
  default = {
    security_group_ids = ["sg-1234567890"]
    subnet_ids         = ["subnet-1234567890"]
  }
}

variable "tags" {
  default = {
    Environment = "prod"
    Owner       = "john-doe"
  }
}