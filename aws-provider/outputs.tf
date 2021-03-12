# To print in the console when the job is finished

output "instances_ids" {
    value = module.ec2_instances.instance_ids
    description = "List of instance IDs"
}