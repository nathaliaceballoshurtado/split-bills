module "lambda_function" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "1.3.0"

  function_name = var.function_name
  description   = var.description
  runtime       = var.runtime
  handler       = var.handler
  source_path   = var.source_path
  timeout       = var.timeout
  memory_size   = var.memory_size

  environment_variables = {
    VAR1 = "value1"
    VAR2 = "value2"
  }

  vpc_config = {
    security_group_ids = var.security_group_ids
    subnet_ids         = var.subnet_id
  }

  tags = {
    Environment = "prod"
    Owner       = "john-doe"
  }
}