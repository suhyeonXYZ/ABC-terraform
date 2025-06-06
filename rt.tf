resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  
  route {
    cidr_block = "172.16.0.0/16"
    gateway_id = aws_vpc_peering_connection.peer.id
  }

  tags = {
    Name = "${var.prefix}-rt"
    Managed_by = "terraform"
  }
}
