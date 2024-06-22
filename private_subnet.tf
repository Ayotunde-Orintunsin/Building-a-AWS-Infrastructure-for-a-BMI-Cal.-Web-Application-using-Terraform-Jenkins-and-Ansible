resource "aws_subnet" "private_app1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_app_subnet1_cidr
  availability_zone = var.availability_zones[0]

  tags = var.tags
}

resource "aws_subnet" "private_app2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_app_subnet2_cidr
  availability_zone = var.availability_zones[1]

  tags = var.tags
}

resource "aws_subnet" "private_db1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_db_subnet1_cidr
  availability_zone = var.availability_zones[0]

  tags = var.tags
}

resource "aws_subnet" "private_db2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_db_subnet2_cidr
  availability_zone = var.availability_zones[1]

  tags = var.tags
}