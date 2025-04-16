locals {
    ami_id = "ami-00a929b66ed6e0de6"
    public_key_file = file("${path.module}/${var.key_name}.pub") #Locals are capable of running functions at a time and take take the output into the variable. Normal variables are not capable of this.
    instance_type = var.isPROD ? "t3.medium" : "t2.micro" #Locals are capable of running expression(condition) at a time and take take the output into the variable. Normal variables are not capable of this.
    key_name = aws_key_pair.deployer_key.key_name
    tags = merge(
        var.tags_all,
        {
            Name = var.instance_name
        }
    )
}