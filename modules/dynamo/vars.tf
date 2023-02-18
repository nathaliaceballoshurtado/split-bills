variable "aws_region" {
  default = "us-east-1"
}

variable "table_name" {
  default = "example-table"
}

variable "hash_key" {
  default = "id"
}

variable "range_key" {
  default = "created_at"
}

variable "read_capacity" {
  default = 5
}

variable "write_capacity" {
  default = 5
}

variable "tags" {
  default = {
    Environment = "production"
    Owner       = "example"
  }
}

variable "stream_enabled" {
  default = true
}

variable "stream_view_type" {
  default = "NEW_AND_OLD_IMAGES"
}