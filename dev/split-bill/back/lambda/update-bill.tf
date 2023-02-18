module "update_bill" {
  source  = "../../modules/lambda"

  function_name = "update-bill"
  runtime       = "python3.9"
  handler       = "lambda_function.lambda_handler"
  filename      = "lambda_function.zip"
  source_path   = "path/to/lambda_function"
  subnet_ids    = [var.subnet_ids]
  
  environment   = {
    variables = {
      "FOO" = "bar"
    }
  }
  timeout       = 60
  memory_size   = 128
}