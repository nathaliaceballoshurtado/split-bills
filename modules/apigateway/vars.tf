variable "aws_region" {
  default = "us-east-1"
}

variable "rest_api_name" {
  default = "example-api"
}

variable "description" {
  default = "Example API Gateway REST API"
}

variable "tags" {
  default = {
    Environment = "production"
    Owner       = "example"
  }
}

variable "binary_media_types" {
  default = ["*/*"]
}

variable "authorizer" {
  default = {
    type = "TOKEN"
  }
}

variable "gateway_responses" {
  default = []
}

variable "models" {
  default = []
}

variable "resources" {
  default = [
    {
      path_part = "example"
      methods = [
        {
          http_method = "GET"
        },
        {
          http_method = "POST"
        },
      ]
    },
  ]
}

variable "deployment" {
  default = {
    description       = "Initial deployment"
    stage_name        = "prod"
    stage_description = "Production stage"
  }
}

variable "usage_plans" {
  default = []
}