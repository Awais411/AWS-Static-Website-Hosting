resource "aws_s3_bucket_website_configuration" "hosting-bucket" {
  bucket = aws_s3_bucket.hosting-bucket.id

  index_document {
    suffix = "index.html"
  }

}