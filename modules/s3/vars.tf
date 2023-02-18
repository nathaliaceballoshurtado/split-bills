variable "aws_region" {
  default = "us-east-1"
}

variable "bucket_name" {
  default = "example-bucket"
}

variable "acl" {
  default = "private"
}

variable "force_destroy" {
  default = true
}

variable "versioning_enabled" {
  default = true
}

variable "server_side_encryption_configuration" {
  default = [
    {
      rule = {
        apply_server_side_encryption_by_default = {
          sse_algorithm = "AES256"
        }
      }
    }
  ]
}

variable "lifecycle_rules" {
  default = [
    {
      id     = "expire-old-versions"
      prefix = ""
      status = "Enabled"
      noncurrent_version_expiration = {
        days = 30
      }
    }
  ]
}

variable "tags" {
  default = {
    Environment = "production"
    Owner       = "example"
  }
}
