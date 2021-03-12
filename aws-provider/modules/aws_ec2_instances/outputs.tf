output "instance_ids" {
    value = aws_instance.default.*.id
    description = "the instance ids" 
}