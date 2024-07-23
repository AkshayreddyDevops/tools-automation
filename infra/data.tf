data "aws_instance" "foo" {
  instance_id = aws_instance.tools.instance_id
}

output "test" {
  value = data.aws_instance.foo
}