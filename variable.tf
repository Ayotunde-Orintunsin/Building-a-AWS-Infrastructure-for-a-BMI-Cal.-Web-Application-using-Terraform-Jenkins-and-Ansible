variable "region" {
  description = "The AWS region to deploy in"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet1_cidr" {
  description = "The CIDR block for the first public subnet"
  type        = string
}

variable "public_subnet2_cidr" {
  description = "The CIDR block for the second public subnet"
  type        = string
}

variable "private_app_subnet1_cidr" {
  description = "The CIDR block for the first private app subnet"
  type        = string
}

variable "private_app_subnet2_cidr" {
  description = "The CIDR block for the second private app subnet"
  type        = string
}

variable "private_db_subnet1_cidr" {
  description = "The CIDR block for the first private database subnet"
  type        = string
}

variable "private_db_subnet2_cidr" {
  description = "The CIDR block for the second private database subnet"
  type        = string
}

variable "availability_zones" {
  description = "The list of availability zones in the region"
  type        = list(string)
}

variable "ami" {
  description = "The AMI to use for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instances"
  type        = string
}

variable "db_engine" {
  description = "The database engine (e.g., mysql)"
  type        = string
}

variable "db_engine_version" {
  description = "The database engine version (e.g., 8.0)"
  type        = string
}

variable "db_instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_username" {
  description = "The username for the database"
  type        = string
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
}
