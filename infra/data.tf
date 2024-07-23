data "aws_instance" "foo" {
  instance_id = aws_instance.tools
}

output "test" {
  value = data.aws_instance.foo
}