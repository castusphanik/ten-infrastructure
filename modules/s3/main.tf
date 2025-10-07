resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  tags   = var.s3_tags
}

output "bucket_arn" { value = aws_s3_bucket.this.arn }