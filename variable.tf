# AWS region to deploy resources in
variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "eu-west-2"
}

# CIDR block for the VPC
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# CIDR block for the first public subnet
variable "public_subnet1_cidr" {
  description = "The CIDR block for the first public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

# CIDR block for the second public subnet
variable "public_subnet2_cidr" {
  description = "The CIDR block for the second public subnet"
  type        = string
  default     = "10.0.2.0/24"
}

# CIDR block for the first private app subnet
variable "private_app_subnet1_cidr" {
  description = "The CIDR block for the first private app subnet"
  type        = string
  default     = "10.0.3.0/24"
}

# CIDR block for the second private app subnet
variable "private_app_subnet2_cidr" {
  description = "The CIDR block for the second private app subnet"
  type        = string
  default     = "10.0.4.0/24"
}

# CIDR block for the first private database subnet
variable "private_db_subnet1_cidr" {
  description = "The CIDR block for the first private database subnet"
  type        = string
  default     = "10.0.5.0/24"
}

# CIDR block for the second private database subnet
variable "private_db_subnet2_cidr" {
  description = "The CIDR block for the second private database subnet"
  type        = string
  default     = "10.0.6.0/24"
}

# List of availability zones for subnets
variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["eu-west-2a", "eu-west-2b"]
}

# AMI ID for EC2 instances
variable "ami" {
  description = "The AMI ID for the instances"
  type        = string
  default     = "ami-0bc91b6bca18d10c5"  
}

# Instance type for EC2 instances
variable "instance_type" {
  description = "The instance type for the instances"
  type        = string
  default     = "t2.micro"  # Replace with desired instance type
}

# Database engine type
variable "db_engine" {
  description = "The database engine to use"
  type        = string
  default     = "mysql"
}

# Database engine version
variable "db_engine_version" {
  description = "The version of the database engine"
  type        = string
  default     = "8.0.35"
}

# Database instance class
variable "db_instance_class" {
  description = "The instance class for the database"
  type        = string
  default     = "db.t3.micro"
}

# Database name
variable "db_name" {
  description = "The name of the database"
  type        = string
  default     = "mydatabase"
}

# Database username
variable "db_username" {
  description = "The username for the database"
  type        = string
  default     = "admin"
}

# Database password
variable "db_password" {
  description = "The password for the database"
  type        = string
  default     = "project2.db"  # Replace with your secure password
  sensitive   = true
}

# Common tags for all resources
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {
    Project = "MyProject"
    Owner   = "MyName"
    Environment = "Dev"
  }
}
