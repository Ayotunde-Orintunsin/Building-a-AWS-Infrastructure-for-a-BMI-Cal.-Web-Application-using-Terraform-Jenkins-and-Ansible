resource "aws_db_instance" "my_db_instance" {
  allocated_storage      = 20
  engine                 = var.db_engine
  engine_version         = var.db_engine_version  # Added engine version
  instance_class         = var.db_instance_class
  identifier             = var.db_name
  username               = var.db_username
  password               = var.db_password
  parameter_group_name   = "default.mysql8.0"  # Make sure this matches the engine version
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.default.name

  tags = merge(var.tags, { Name = "Database" })
}
