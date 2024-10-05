output "name" {
    value = aws_s3_bucket_website_configuration.hosting-bucket.website_endpoint
}