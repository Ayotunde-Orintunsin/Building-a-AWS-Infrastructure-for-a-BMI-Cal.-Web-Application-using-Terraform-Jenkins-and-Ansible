output "web_instance_ids" {
  description = "The IDs of the web server instances"
  value       = aws_autoscaling_group.web_asg.id
}

output "web_lb_dns_name" {
  description = "The DNS name of the web load balancer"
  value       = aws_lb.app_lb.dns_name
}

output "app_instance_ids" {
  description = "The IDs of the app server instances"
  value       = aws_autoscaling_group.app_asg.id
}

output "db_instance_endpoints" {
  description = "The endpoints of the database instances"
  value       = aws_db_instance.my_db_instance.endpoint
}
