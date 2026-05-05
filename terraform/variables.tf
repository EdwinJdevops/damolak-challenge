variable "project"     { type = string  default = "damolak-challenge" }
variable "environment" { type = string  default = "production" }
variable "aws_region"  { type = string  default = "us-east-1" }
variable "github_repo" { type = string  description = "GitHub repo in org/repo format" }

variable "vpc_cidr"             { type = string  default = "10.0.0.0/16" }
variable "public_subnet_cidrs"  { type = list(string) default = ["10.0.1.0/24", "10.0.2.0/24"] }
variable "private_subnet_cidrs" { type = list(string) default = ["10.0.10.0/24", "10.0.11.0/24"] }
variable "availability_zones"   { type = list(string) default = ["us-east-1a", "us-east-1b"] }

variable "desired_count" { type = number  default = 2 }
