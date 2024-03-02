module "alpha_natgw_1" {
  source  = "app.terraform.io/devsecopsb39hh/devsecopsb39-nat/aws"
  version = "1.0.1"
  public_subnet_id = module.alpha_vpc_1.public_subnets_id_1
  vpc_name         = module.alpha_vpc_1.vpc_name
  private_rt_id    = module.alpha_vpc_1.private_route_table_id
}