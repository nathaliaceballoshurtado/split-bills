
module "cloudfront_distribution" {
  source = "terraform-aws-modules/cloudfront/aws"

  price_class = "PriceClass_100"
  enabled     = true
  aliases     = ["example.com"]
  origin_path = "/assets"
  default_root_object = "index.html"

  # S3 origin configuration
  origin_s3_bucket_name = "my-bucket"
  origin_s3_origin_access_identity_iam_arn = "arn:aws:iam::123456789012:origin-access-identity/cloudfront/ABCDEFGHIJKLMN"

  # SSL/TLS configuration
  ssl_certificate_arn         = "arn:aws:acm:us-east-1:123456789012:certificate/abc12345-6789-0123-4567-8901abcdef"
  ssl_support_method          = "sni-only"
  minimum_protocol_version    = "TLSv1.2_2018"
  # ... other SSL/TLS options ...

  # Cache configuration
  default_cache_behavior_allowed_methods = ["GET", "HEAD"]
  default_cache_behavior_cached_methods  = ["GET", "HEAD"]
  default_cache_behavior_forwarded_values {
    query_string = false
    headers {
      "Host" = "false"
      "Origin" = "false"
      "User-Agent" = "false"
    }
    cookies {
      forward = "none"
    }
  }
  # ... other cache options ...

  # Logging configuration
  logging_enabled     = true
  logging_include_cookies = true
  logging_bucket      = "my-logs-bucket"
  logging_prefix      = "cloudfront/logs/"
}