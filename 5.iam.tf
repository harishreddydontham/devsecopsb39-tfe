module "alpha_iam_1" {
  source  = "app.terraform.io/devsecopsb39hh/devsecopsb39-iam/aws"
  version = "1.0.1"
  env                 = lower(module.alpha_vpc_1.environment)
  rolename            = "devsecopsb39testrole"
  instanceprofilename = "devsecopsb39instprofile"
  iam_policy_name     = "devsecopsb39-iampolicy"
}