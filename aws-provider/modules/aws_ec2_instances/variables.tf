# Add here the variables you need to pass to the instance.

variable "instance_type" {
    type = string
    description = "The instance type"  
}

variable "ami" {
    type = string
    description = "The AMI ID"
}