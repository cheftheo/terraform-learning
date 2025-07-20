variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID to use for the instance"
  default     = "ami-0c02fb55956c7d316" # Amazon Linux 2 (us-east-1)
}

variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

variable "key_name" {
  description = "webserver"
  type        = string
}


variable "aws_access_key" {
  description = "access key"
  type        = string
}

variable "aws_secret_key" {
  description = "secret key"
  type        = string
}
