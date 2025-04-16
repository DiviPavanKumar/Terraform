data "aws_ami" "datasourcepractice" {
    owners = ["amazon"]
    most_recent = true

    filter {
        name = "name"
        values = ["al2023-ami-2023.7.20250331.0-kernel-6.1-x86_64"]
    }
}

output "ami_id" {
    value = data.aws_ami.datasourcepractice.id
}
