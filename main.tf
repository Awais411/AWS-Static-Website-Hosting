resource "aws_s3_bucket" "hosting-bucket" {
  bucket = "hosting-bucket-abc-123"

  tags = {
    Name        = "My bucket"
  }
}

resource "aws_s3_bucket_public_access_block" "Allow-Public-Access" {
  bucket = aws_s3_bucket.hosting-bucket.id

  block_public_acls       = false
  ignore_public_acls       = false
  restrict_public_buckets = false
  block_public_policy     = false
}