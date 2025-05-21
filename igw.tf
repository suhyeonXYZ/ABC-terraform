resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.this.id

  tags = {
    Name = "${var.prefix}-igw"
    Managed_by = "terraform"
  }
}