output "security_group_name" {
  description="the security group id"
  value=aws_security_group.blue-security.name
}
