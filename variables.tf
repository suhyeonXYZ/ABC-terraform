variable "prefix" {}


variable "region" {}
variable "vpc_cidr" {}


variable "public_subnets" {
    type = list(object({
        cidr                =   string
        availability_zone   =   string
    }))
}

variable "aws_vpc_peer_id" {}
