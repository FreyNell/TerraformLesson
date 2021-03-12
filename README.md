# TerraformLesson

# Terraform with AWS

In a typical Terraform project you have the following directory tree:

```
├── main.tf                      # Here starts the execution.
├── modules                      # Here is where resources are stored.
│   └── aws_ec2_instances        # Here is where is defined your resource.
│       ├── main.tf              # main file of your resource.
│       ├── outputs.tf           # output variables from your resource.
│       └── variables.tf         # input variables from your resource.
├── outputs.tf                   # output file from your project.
├── params                       # environments of your project.
│   └── dev                      # folder for one environment.
│       ├── backend.tfvars       # terraform state configuration for this environment
│       └── variables.tfvars     # define project variables for this environment.
├── README.md
├── variables.tf                 # input variables for this project
└── versions.tf                  # versions that runs the project
```

You will execute the following commands with terraform installed in your pc:

```
    # Init the project
    terraform init --reconfigure -backend-config=params/dev/backend.tfvars

    # Validate sysntax
    terraform validate

    # "Compile the project"
    terraform plan -out=mystate.state -var-file=params/dev/variables.tfvars

    # Deploy in AWS.
    terraform apply "mystate.state"

    # Destroy from AWS.
    terraform destroy -var-file=params/dev/variables.tfvars
```

NOTE: The files called outputs.tf, variables.tf and main.tf are mandatory for terraform.