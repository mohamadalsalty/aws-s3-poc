provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-training-aws"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_object" "example_object" {
  bucket = "${aws_s3_bucket.example.id}"  
  key    = "example.txt"
  source = "example.txt"

  content_type = "text/plain"

  metadata = {
    custom = "metadata"
  }
}