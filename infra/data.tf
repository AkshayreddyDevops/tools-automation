data "aws_instance" "foo" {
  instance_id = aws_instance.tools.id
}

