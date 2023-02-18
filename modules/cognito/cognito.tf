
module "cognito_user_pool" {
  source  = "terraform-aws-modules/cognito/aws"
  version = "2.2.0"

  user_pool_name                = var.user_pool_name
  username_attributes           = var.username_attributes
  auto_verified_attributes      = var.auto_verified_attributes
  password_policy               = var.password_policy
  email_configuration           = var.email_configuration
  verification_message_template = var.verification_message_template
  tags                          = var.tags
}