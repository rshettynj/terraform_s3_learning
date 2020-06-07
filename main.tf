locals {
  mylocalbucket1 = "rshetty-serverless-artifacts-900-ohio"
  mylocalbucket2 = "rshetty-serverless-artifacts-900-va"
}

#myregion comes from root module variables.tf file
provider "aws" {
  region  = var.myregion["east1_region"]
  version = "~> 2.60"
}

provider "aws" {
  alias   = "ohio"
  region  = var.myregion["east2_region"]
  version = "~> 2.60"
}

#mybucket1 and mybucket2 comes from root module local definition above
#this is module manifest that refer to a child module called "my_s3.tf"
module "subnets_module" {
  source = "./modules/my_subnets"
}
