module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "2.0.0"

  bucket_name                          = var.bucket_name
  acl                                  = var.acl
  force_destroy                        = var.force_destroy
  versioning_enabled                   = var.versioning_enabled
  server_side_encryption_configuration = var.server_side_encryption_configuration
  lifecycle_rules                      = var.lifecycle_rules
  tags                                 = var.tags
}