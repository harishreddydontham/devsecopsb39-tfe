resource "random_integer" "random_user_id" {
  max = 999999
  min = 100000
}
module "alpha_secret_rds" {
  source  =  "app.terraform.io/devsecopsb39hh/devsecopsb39-secrets_manager/aws"
  version = "1.0.1"
  rds_secret_name = "mysql-rds-password-${random_integer.random_user_id.result}"
}