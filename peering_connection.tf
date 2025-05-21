resource "aws_vpc_peering_connection" "peer" {
  peer_vpc_id   = var.aws_vpc_peer_id
  vpc_id        = aws_vpc.this.id
  auto_accept = true

  tags = {
        Name = "${var.prefix}-pcx"
        Managed_by = "terraform"
  }


}
