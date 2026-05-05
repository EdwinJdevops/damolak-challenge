variable "project"              { type = string }
variable "vpc_id"               { type = string }
variable "private_subnet_ids"   { type = list(string) }
variable "alb_security_group_id" { type = string }
variable "target_group_arn"     { type = string }
variable "execution_role_arn"   { type = string }
variable "task_role_arn"        { type = string }
variable "container_image"      { type = string }
variable "aws_region"           { type = string }
variable "task_cpu"             { type = string  default = "256" }
variable "task_memory"          { type = string  default = "512" }
variable "desired_count"        { type = number  default = 2 }
variable "tags"                 { type = map(string) default = {} }
