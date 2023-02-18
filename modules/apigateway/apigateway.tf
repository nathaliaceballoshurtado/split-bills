module "api_gateway" {
  source  = "terraform-aws-modules/apigateway/aws"
  version = "2.0.0"

  rest_api_name = var.rest_api_name
  description   = var.description
  tags          = var.tags

  binary_media_types = var.binary_media_types
  authorizer         = var.authorizer
  gateway_responses  = var.gateway_responses
  models             = var.models
  resources          = var.resources
  deployment         = var.deployment
  usage_plans        = var.usage_plans
}


