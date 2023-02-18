resource "aws_api_gateway_resource" "resource_1" {
  rest_api_id = aws_api_gateway_rest_api.my_api.id
  parent_id   = aws_api_gateway_rest_api.my_api.root_resource_id
  path_part   = "resource_1"
}

resource "aws_api_gateway_method" "method_1" {
  rest_api_id   = aws_api_gateway_rest_api.my_api.id
  resource_id   = aws_api_gateway_resource.resource_1.id
  http_method   = "POST"
  authorization = "NONE"
}

# Define the integration for Lambda function
resource "aws_api_gateway_integration" "integration_1" {
  rest_api_id = aws_api_gateway_rest_api.my_api.id
  resource_id = aws_api_gateway_resource.resource_1.id
  http_method = aws_api_gateway_method.method_1.http_method
  integration_http_method = "POST"
  type = "AWS_PROXY"
  uri = aws_lambda_function.lambda_function_1.invoke_arn
}
