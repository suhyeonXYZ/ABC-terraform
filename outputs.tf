output "vpc_id" {
    description = "The ID of VPC"
    value = aws_vpc.this.id
}

output "vpc_cidr_block" {
    description = "The CIDR IP Range Block of VPC"
    value = aws_vpc.this.cidr_block
}

output "public_subnet_ids" {
    description = "The List of Public Subnet ID of VPC"
    value = aws_subnet.public.*.id
}

output "aws_route_table_ids" {
      description = "aws_route_table_ids"
          value = aws_route_table.rt.id
}

output "aws_vpc_peering_connection" {
      description = "aws_vpc_peering_connection"
      value = aws_vpc_peering_connection.peer.id
}
