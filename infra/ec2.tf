resource "aws_instance" "tools"{
  ami = "ami-041e2ea9402c46c32"
  vpc_security_group_ids = [aws_security_group.sg.id]
  instance_type = var.instance_type
  iam_instance_profile = aws_iam_instance_profile.instance-profile.name
  instance_market_options {
    market_type = "spot"
    spot_options {
      instance_interruption_behavior = "stop"
      spot_instance_type = "persistent"
    }
  }
  tags = {
    Name = "${var.name}"
  }
}

resource "aws_security_group" "sg" {
  name = "${var.name}-sg"
  description = "${var.name}-sg"
  egress{
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress{
    from_port = 22
    to_port = 22
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "${var.name}-sg"
  }

}

# resource "aws_route53_record" "www" {
#   zone_id = aws_route53_zone.primary.zone_id
#   name    = "www.example.com"
#   type    = "A"
#   ttl     = 300
#   records = [aws_eip.lb.public_ip]
# }
output "test" {
  value = data.aws_instance.foo
}