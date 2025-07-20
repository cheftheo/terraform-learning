provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  count         = 3
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "Terraform-EC2-${count.index + 1}"
  }
}

resource "null_resource" "stop_instance" {
  count = 3

  provisioner "local-exec" {
    command = "aws ec2 stop-instances --instance-ids ${aws_instance.example[count.index].id} --region ${var.aws_region}"
  }

  depends_on = [aws_instance.example]
}