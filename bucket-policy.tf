resource "aws_s3_bucket_policy" "bucket-policy" {
    bucket = aws_s3_bucket.hosting-bucket.id
    policy = jsonencode(
        {
            Version = "2012-10-17",
            Statement = [
                {
                    Sid       = "PublicReadGetObject",
                    Effect    = "Allow",
                    Principal = "*",
                    Action    = "s3:GetObject",
                    Resource  = "arn:aws:s3:::${aws_s3_bucket.hosting-bucket.id}/*"
                }
            ]
        }
    )
}