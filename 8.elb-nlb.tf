module "alpha_elb_1" {
  source  = "app.terraform.io/devsecopsb39hh/devsecopsb39-elb-nlb/aws"
  version = "1.0.1"
  env             = module.alpha_vpc_1.environment
  nlbname         = var.nlbname
  subnets         = module.alpha_vpc_1.public_subnets_id
  tgname          = var.nlbtgname
  vpc_id          = module.alpha_vpc_1.vpc_id
  private_servers = module.alpha_compute_1.private_servers
  #*.awsb40.xyz Certificate ARN
  certificate_arn = var.alb_certificate_arn
}


