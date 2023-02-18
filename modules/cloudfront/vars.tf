
variable "aws_region" {
  default = "us-east-1"
}

variable "aliases" {
  default = ["example.com", "www.example.com"]
}

variable "origin_path" {
  default = "/example"
}

variable "enabled" {
  default = true
}

variable "is_ipv6_enabled" {
  default = true
}

variable "default_root_object" {
  default = "index.html"
}

variable "price_class" {
  default = "PriceClass_All"
}

variable "default_cache_behavior" {
  default = {
    target_origin_id             = "example"
    viewer_protocol_policy       = "allow-all"
    allowed_methods              = ["GET", "HEAD", "OPTIONS"]
    cached_methods               = ["GET", "HEAD"]
    forwarded_values             = {}
    min_ttl                      = 0
    default_ttl                  = 3600
    max_ttl                      = 86400
    compress                     = true
    smooth_streaming             = false
    lambda_function_associations = []
    field_level_encryption_id    = ""
  }
}

variable "ordered_cache_behavior" {
  default = []
}

variable "viewer_certificate" {
  default = {
    acm_certificate_arn = "arn:aws:acm:us-east-1:123456789012:certificate/abcde123-45fg-6h7i-8jkl-mnopqrs9tu01"
    ssl_support_method  = "sni-only"
  }
}

variable "restrictions" {
  default = []
}

variable "web_acl_id" {
  default = ""
}

variable "tags" {
  default = {
    Environment = "production"
    Owner       = "example"
  }
}