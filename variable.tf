variable "region" {
  description = "The AWS region to deploy in"
  type        = string
  default     = "eu-west-2"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet1_cidr" {
  description = "The CIDR block for the first public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet2_cidr" {
  description = "The CIDR block for the second public subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_app_subnet1_cidr" {
  description = "The CIDR block for the first private app subnet"
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_app_subnet2_cidr" {
  description = "The CIDR block for the second private app subnet"
  type        = string
  default     = "10.0.4.0/24"
}

variable "private_db_subnet1_cidr" {
  description = "The CIDR block for the first private database subnet"
  type        = string
  default     = "10.0.5.0/24"
}

variable "private_db_subnet2_cidr" {
  description = "The CIDR block for the second private database subnet"
  type        = string
  default     = "10.0.6.0/24"
}

variable "availability_zones" {
  description = "The list of availability zones in the region"
  type        = list(string)
  default     = ["eu-west-2a", "eu-west-2b"]
}

variable "ami" {
  description = "The AMI to use for the EC2 instances"
  type        = string
  default     = "ami-053a617c6207ecc7b"
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instances"
  type        = string
  default     = "t2.micro"
}

variable "db_engine" {
  description = "The database engine (e.g., mysql)"
  type        = string
  default     = "mysql"
}

variable "db_engine_version" {
  description = "The database engine version (e.g., 8.0)"
  type        = string
  default     = "8.0"
}

variable "db_instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  default     = "mydb"
}

variable "db_username" {
  description = "The username for the database"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
  default     = "password"
}

variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default     = {
    Project = "MyProject"
    Owner   = "Myself"
  }
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
  default     = "Console_keypair"
}

variable "public_key_path" {
  description = "The path to the public key file"
  type        = string
  default     = "/mnt/c/Users/ayotunde_11/Console_keypair.pem"
}
