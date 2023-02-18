module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.5.0"

  name                         = var.name
  cidr                         = var.cidr
  azs                          = var.azs
  private_subnets              = var.private_subnets
  public_subnets               = var.public_subnets
  enable_nat_gateway           = var.enable_nat_gateway
  single_nat_gateway           = var.single_nat_gateway
  create_database_subnet_group = var.create_database_subnet_group
  enable_dns_hostnames         = var.enable_dns_hostnames
  enable_dns_support           = var.enable_dns_support
  tags                         = var.tags
}
