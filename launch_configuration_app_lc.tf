resource "aws_launch_configuration" "app_lc" {
  name          = "app-lc"
  image_id      = var.ami
  instance_type = var.instance_type
  security_groups = [aws_security_group.app_sg.id]
  key_name      = var.key_name

  lifecycle {
    create_before_destroy = true
  }
}