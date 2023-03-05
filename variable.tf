variable "vpc" {
    description = "vpc id"
    type = string 
}

variable storage{
    description = "define capacity"
    type = number
}

variable engine{
    description = "database engine type"
    type = string
}

variable "engine_version" {
    description = "version of the chosen engine"
    type = string
}

variable "instance_class" {
    description = "instance type"
    type = string
}

variable "username" {
    type = string
}

variable "password" {
    type = string
}

variable "subnet_ids" {
    description = "fetch the private subnet ids"
}

variable "skip_snapshot" {
    type = bool
}

variable "app_security_group_id" {
    description = " attached application security group id"
}