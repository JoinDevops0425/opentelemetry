provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "my-tf-bucket-090426"

  lifecycle {
    prevent_destroy = false
  }
}


resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "my-tf-dynamodb-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "UserId"
    type = "S"
  }
}
