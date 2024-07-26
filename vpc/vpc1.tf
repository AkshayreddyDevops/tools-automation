resource "aws_vpc" "vpc1"{
  cidr_block = var.cidr

  tags={
    Names = "${var.env}-vpc"
  }
}