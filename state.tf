terraform {
  backend "s3" {
    bucket = "akshay-terraform"
    key = "tools/dev/terraform.tfstate"
    region = "us-east-1"
  }
}