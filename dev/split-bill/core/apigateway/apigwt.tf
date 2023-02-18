module "api_gateway" {
  source = "terraform-aws-modules/api-gateway/aws"

  # API Gateway settings
  name = "my-api"
  description = "My API Gateway endpoint"

  # Lambda integration settings
  integration_type = "HTTP"
  uri = "http://${module.lambda.private_ip}:8080"
  http_method = "POST"
  request_parameters = {
    "integration.request.header.X-MyHeader" = "'my-value'"
  }
  
  # VPC and NAT gateway settings
  vpc_id = var.vpc.vpc_id
  nat_gateway_id = var.module.nat_gateway.nat_gateway_id
  subnet_ids = var.vpc.private_subnet_ids
  security_group_ids = [var.lambda.security_group_id]
  
  # Export API Gateway endpoint attributes
  exports = {
    endpoint = "${module.api_gateway_nat_lambda.url}"
  }
}

