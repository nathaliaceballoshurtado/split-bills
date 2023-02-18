module "nat_gateway_base" {
  source  = "../../modules/vpc/nat"

  vpc_id = var.vpc_id
  subnet_id = var.subnet_id
  public_subnet_id = var.public_subnet_id

  tags = {
    Environment = var.environment
  }
}

output "nat_gateway_ip" {
  value = module.nat_gateway_base.nat_public_ip
}