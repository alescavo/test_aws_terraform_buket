provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}


resource "aws_s3_bucket" "example" {
  bucket = "example-buketino"
}
