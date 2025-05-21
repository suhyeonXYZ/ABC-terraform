prefix = "ctuser20"
region = "ap-northeast-2"
vpc_cidr = "10.20.0.0/16"

public_subnets = [
    {cidr = "10.20.1.0/24", availability_zone = "ap-northeast-2a"},
    {cidr = "10.20.2.0/24", availability_zone = "ap-northeast-2b"},
    {cidr = "10.20.3.0/24", availability_zone = "ap-northeast-2c"},
]

aws_vpc_peer_id = "vpc-0760b28b158a2e63b"