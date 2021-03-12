# Define the resource.

resource "aws_instance" "default" {
    
    ami           = "asdasd" # The AMI ID.
    instance_type = "t2.micro" # The instance tier.

    tags = {
      "Name" = format("%s",var.name)
    }
    
    root_block_device {
      delete_on_termination = true # Allow delete when execute Terraform Destroy
    }

}