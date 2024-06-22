resource "aws_autoscaling_group" "web_asg" {
  launch_configuration    = aws_launch_configuration.web_lc.id
  min_size                = 2
  max_size                = 4
  desired_capacity        = 2
  vpc_zone_identifier     = [aws_subnet.public1.id, aws_subnet.public2.id]
  target_group_arns       = [aws_lb_target_group.web_tg.arn]
  health_check_type       = "EC2"
  health_check_grace_period = 300

  tag {
    key                 = "Name"
    value               = "WebServer"
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