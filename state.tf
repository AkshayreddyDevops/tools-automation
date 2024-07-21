terraform {
  backend "s3" {
    bucket = "akshay-terraform"
    key = "tools/terraform.tfstate"
    reagion = "us-east-1"
  }
}