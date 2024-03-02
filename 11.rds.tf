# module "alpha_rds" {
#   source  = "app.terraform.io/devsecopsb39hh/devsecopsb39-rds/aws"
#   version = "1.0.1"
#   db_subnet_group_name   = "devsecopsb39subnetgroup"
#   private_subnets        = module.alpha_vpc_1.private_subnets_id
#   allocated_storage      = "10"
#   engine                 = "mysql"
#   engine_version         = "8.0.28"
#   identifier             = "myrds1"
#   instance_class         = "db.t2.medium"
#   db_name                = "devopsb39instance"
#   vpc_security_group_ids = module.alpha_sg_1.sg_id
#   username               = "adminsree"
#   password               = module.alpha_secret_rds.rds_secret
# }