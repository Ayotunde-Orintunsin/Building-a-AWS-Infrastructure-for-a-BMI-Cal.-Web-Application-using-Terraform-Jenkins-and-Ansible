resource "aws_db_subnet_group" "default" {
  name       = "my_db_subnet_group"
  subnet_ids = [aws_subnet.private_db1.id, aws_subnet.private_db2.id]

  tags = var.tags
}