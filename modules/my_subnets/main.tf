variable "vpc_id" {
  default = "vpc-0b7ce3ee57cdb303a"
}

data "aws_vpc" "selected" {
   id = var.vpc_id
}

data "aws_subnet_ids" "selected" {
  vpc_id = var.vpc_id
}

variable "mymap" {
  default =  { dad = "rshetty", mom = "lsonal", son = "adit" }
}
