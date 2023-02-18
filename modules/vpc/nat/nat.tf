module "nat_gateway" {
  source  = "terraform-aws-modules/nat-gateway/aws"
  version = "2.0.0"

  subnet_id          = var.subnet_id
  elastic_ip_count   = var.elastic_ip_count
  create_nat_gateway = true
  tags               = var.tags
}