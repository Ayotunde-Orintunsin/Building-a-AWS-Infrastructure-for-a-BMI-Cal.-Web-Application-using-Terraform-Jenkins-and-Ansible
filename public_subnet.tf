resource "aws_subnet" "public1" {
  vpc_id                 = aws_vpc.main.id
  cidr_block             = var.public_subnet1_cidr
  availability_zone      = var.availability_zones[0]
  map_public_ip_on_launch = true

  tags = var.tags
}

resource "aws_subnet" "public2" {
  vpc_id                 = aws_vpc.main.id
  cidr_block             = var.public_subnet2_cidr
  availability_zone      = var.availability_zones[1]
  map_public_ip_on_launch = true

  tags = var.tags
}