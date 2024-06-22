resource "aws_autoscaling_group" "app_asg" {
  launch_configuration    = aws_launch_configuration.app_lc.id
  min_size                = 2
  max_size                = 4
  desired_capacity        = 2
  vpc_zone_identifier     = [aws_subnet.private_app1.id, aws_subnet.private_app2.id]
  health_check_type       = "EC2"
  health_check_grace_period = 300

  tag {
    key                 = "Name"
    value               = "AppServer"
    propagate_at_launch = true
  }

  tag {
    key                 = "Project"
    value               = var.tags["Project"]
    propagate_at_launch = true
  }

  tag {
    key                 = "Owner"
    value               = var.tags["Owner"]
    propagate_at_launch = true
  }
}