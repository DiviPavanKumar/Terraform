# Find the latest available AMI that is tagged with Component = web
data "aws_ami" "ami_id" {
    owners = [ "amazon" ] # Amazon
    most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.7.20250331.0-kernel-6.1-x86_64"]
  }
}

  output "ami_id" {
    value = data.aws_ami.ami_id.id
  }

#   filter {
#     name   = "tag:Component"
#     values = ["web"]
#   }


