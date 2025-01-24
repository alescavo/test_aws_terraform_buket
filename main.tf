provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}


resource "aws_s3_bucket" "example" {
  bucket = "example-bucket"
}

resource "aws_s3_bucket_acl" "example_acl" {
  bucket = aws_s3_bucket.example.id
  acl    = "private"
}

