output "instance_ids" {
  description = "IDs of the EC2 instances"
  value       = [for instance in aws_instance.example : instance.id]
}

output "public_ips" {
  description = "Public IPs of the EC2 instances"
  value       = [for instance in aws_instance.example : instance.public_ip]
}
