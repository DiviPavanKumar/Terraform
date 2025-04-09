module "ec2" {
    source = "../terraform-module-ec2"  # Path to the module source code
    ami = "ami-00a929b66ed6e0de6"  # Amazon Linux 2 AMI ID
    instance_type = "t2.micro"  # Instance type
    tags = "MyEC2Instance"  # Tags for the instance
    default_tags = {  # Default tags for all resources
        Environment = "Testing"  # Environment type (e.g., Dev, Test, Prod)
        Name        = "Testing Default Tags"  # Default Name tag for resources
        Scripting   = "Terraform"  # Tool used to provision resources
        By          = "Pavan Kumar Divi"  # Creator or responsible person
    }
}
