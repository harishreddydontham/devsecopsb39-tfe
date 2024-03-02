#Using networking modules for vpc, subnets & routing configuration.

module "alpha_vpc_1" {
  source  = "app.terraform.io/devsecopsb39hh/devsecopsb39-network/aws"
  version = "1.0.1"
  vpc_cidr           = "192.168.0.0/16"
  vpc_name           = "ALPHADEV"
  environment        = var.environment
  public_cidr_block  = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
  private_cidr_block = ["192.168.10.0/24", "192.168.20.0/24", "192.168.30.0/24"]
  azs                = ["us-east-1a", "us-east-1b", "us-east-1c"]
  owner              = "JavaAppTeam"
}