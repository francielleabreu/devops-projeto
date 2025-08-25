output "ec2_public_ip" {
  value = aws_instance.devops_ec2.public_ip
}

output "s3_bucket_name" {
  value = aws_s3_bucket.devops_bucket.bucket
}