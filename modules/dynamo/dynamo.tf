module "dynamodb_table" {
  source  = "terraform-aws-modules/dynamodb-table/aws"
  version = "2.0.0"

  name             = var.table_name
  hash_key         = var.hash_key
  range_key        = var.range_key
  read_capacity    = var.read_capacity
  write_capacity   = var.write_capacity
  tags             = var.tags
  stream_enabled   = var.stream_enabled
  stream_view_type = var.stream_view_type
}