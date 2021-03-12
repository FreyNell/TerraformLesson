variable "region" {
    type = string
    descrdescription = "aws account region"  
}

variable "global_variable" {
    type = list(string)
    description = "list of strings variable"
}

variable "another_variable" {
    type = number
    description = "numeric variable"
}