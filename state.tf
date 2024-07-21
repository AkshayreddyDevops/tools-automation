terraform {
  backend "s3" {
    bucket = "akshay-terraform"
    key = "tools/terraform.tfstate"
    region = "us-east-1"
  }
}