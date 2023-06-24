#
rule "aws_resource_missing_tags" {
  enabled = true
  tags = [
    "Project",
    "Application",
    "Environment",
  ]
}
