module "alpha_elb_alb_1" {
  source  = "app.terraform.io/devsecopsb39hh/devsecopsb39-elb-alb/aws"
  version = "1.0.1"
  albname         = var.albname
  sg_id           = module.alpha_sg_1.sg_id
  subnets         = module.alpha_vpc_1.public_subnets_id
  env             = module.alpha_vpc_1.environment
  albtgname       = var.albtgname
  vpc_id          = module.alpha_vpc_1.vpc_id
  private_servers = module.alpha_compute_1.private_servers
  #*.awsb048.xyz Certificate ARN
  alb_certificate_arn = var.alb_certificate_arn
}


