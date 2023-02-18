module "cloudfront_distribution" {
  source  = "terraform-aws-modules/cloudfront/aws"
  version = "2.1.0"

  aliases                  = var.aliases
  origin_path              = var.origin_path
  enabled                  = var.enabled
  is_ipv6_enabled          = var.is_ipv6_enabled
  default_root_object      = var.default_root_object
  price_class              = var.price_class
  certificate_arn          = var.certificate_arn
  minimum_protocol_version = var.minimum_protocol_version
  logging_config           = var.logging_config
  default_cache_behavior   = var.default_cache_behavior
  ordered_cache_behavior   = var.ordered_cache_behavior
  viewer_certificate       = var.viewer_certificate
  restrictions             = var.restrictions
  web_acl_id               = var.web_acl_id
  tags                     = var.tags
}
