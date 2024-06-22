resource "aws_launch_configuration" "web_lc" {
  name          = "web-lc"
  image_id      = var.ami
  instance_type = var.instance_type
  security_groups = [aws_security_group.web_sg.id]

  lifecycle {
    create_before_destroy = true
  }
}