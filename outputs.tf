output "ec2_instance" {
  description = "Returns the ec2 instance attributes"
  value = {
    id                 = aws_instance.ec2_instance.id
    security_group_ids = local.sg_ids
  }
}
