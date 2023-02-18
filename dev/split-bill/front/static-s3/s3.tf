module "aws_s3_bucket" {
    source  = "../../modules/s3t"

    bucket = "example-bucket"
    acl    = "private"

  tags = {
    Name        = "example-bucket"
    Environment = "production"
  }
}